import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harlowe_chat_package/harlowe_chat_package.dart';
import 'package:harlowe_chat_package/src/dartz_extension.dart';
import 'package:harlowe_chat_package/src/models/twilio_message/twilio_message.dart';

import 'chat_state.dart';

class ChatNotifier extends StateNotifier<ChatState> {
  final HarloweChat _chat;
  final int? _phiId;
  final int? _userId;
  final String? _conversationSid;
  final Function(String token, String conversationSid) _initSDK;
  final Function(String token) _updateAccessToken;
  final Function(String? currentToken) _checkAndUpdateAccessToken;
  final Function(String conversationSid) _subscribeToMessageUpdate;

  // final LocalStorage _localStorage;

  StreamSubscription? _subscription;

  ChatNotifier(
    this._chat,
    this._initSDK,
    // this._localStorage,
    this._phiId,
    this._userId,
    this._conversationSid,
    this._updateAccessToken,
    this._checkAndUpdateAccessToken,
    this._subscribeToMessageUpdate,
    Ref ref,
  ) : super(ChatState());

  Future<void> init() async {
    if (_phiId != null) {
      await loadConversationMobile(_phiId);
    } else if (_userId != null && _conversationSid != null) {
      await loadConversationWEB(_conversationSid, _userId);
    }
  }

  Future<void> loadConversationMobile(int phiId) async {
    final response = await _chat.getConversationsFromPhiId(phiId);
    response.fold(
      (f) => print(f),
      (conversationsSummary) async {
        final firstConversation = conversationsSummary.firstOrNull;
        final sid = firstConversation?.conversationSid;
        if (firstConversation != null && sid != null) {
          final token = firstConversation.credentials.token;
          if (token != null) {
            state = state.copyWith(
              conversation: firstConversation,
              messages: firstConversation.messageTail,
            );
            loadConversationMessages(sid);
            loadConversationParticipants(firstConversation.conversationId);
            await _initSDK(token, sid);
            Future.delayed(
              Duration(seconds: 1),
              () => _subscribeToMessageUpdate(sid),
            );
          }
        }
      },
    );
  }

  Future loadConversationWEB(String conversationSid, int userId) async {
    state = state.copyWith(loading: true);
    final conversations = await _chat.getConversationsFromUserId(userId);
    if (conversations.isRight()) {
      final conversation = conversations
          .asRight()
          .firstWhereOrNull((e) => e.conversationSid == conversationSid);
      //Conversation already exist - join
      if (conversation != null) {
        state = state.copyWith(
          conversation: conversation,
          messages: conversation.messageTail,
        );
        await initSDKAndLoadMessages(conversation.credentials);
      }
      //Join conversation
      else {
        final credentials = await _chat.joinConversation(
          conversationSid: conversationSid,
        );
        if (credentials.isRight()) {
          await initSDKAndLoadMessages(credentials.asRight());
        }
      }
    }

    state = state.copyWith(loading: false);
  }

  Future initSDKAndLoadMessages(ConversationCredentials? credentials) async {
    final token = credentials?.token;
    final conversationSid = credentials?.conversationSid;
    if (token != null && conversationSid != null) {
      await _initSDK(token, conversationSid);
      await loadConversationMessages(conversationSid);
      state = state.copyWith(loading: false);
    }
  }

  loadConversationMessages(String conversationSid) async {
    final response = await _chat.getConversationMessages(
      conversationSid,
    );
    response.fold((l) => null, (messages) {
      state = state.copyWith(messages: messages);
    });
  }

  loadConversationParticipants(int? conversationId) async {
    state = state.copyWith(loading: true);
    if (conversationId != null) {
      final response = await _chat.getParticipants(conversationId);

      if (response.isRight()) {
        final participants = response.asRight();
        state = state.copyWith(participants: participants);
        for (final participant in participants) {
          final participantIdentity = participant.chatIdentity;
          if (participantIdentity != null) {
            //TODO. implement
            final cachedPhoto = null;
            // await _localStorage.getUserPhoto(participantIdentity);
            if (cachedPhoto != null) {
              print('User $participantIdentity has a photo cached.');
              _updateParticipantPhoto(participantIdentity, cachedPhoto);
            } else {
              final photo = await _chat.getParticipantPhoto(
                conversationId: conversationId,
                participantId: participant.participantId,
              );
              photo.fold(
                (l) {
                  print('User $participantIdentity does not have a photo.');
                },
                (image) {
                  // _localStorage.storeProfilePhoto(participantIdentity, image);
                  _updateParticipantPhoto(participantIdentity, image);
                },
              );
            }
          }
        }
      }
      state = state.copyWith(loading: false);
    }
  }

  _updateParticipantPhoto(String participantIdentity, Uint8List image) {
    final newMap = Map<String, Uint8List>.from(state.participantImages ?? {});
    newMap[participantIdentity] = image;

    state = state.copyWith(participantImages: newMap);
  }

  addMessage(TwilioMessage twilioMessage) async {
    final message = _mapTwilioMessageToConversationMessage(twilioMessage);
    final messages = List<ConversationMessage>.from(state.messages ?? [])
      ..add(message);
    state = state.copyWith(messages: messages);
  }

  sendMessage(String message) async {
    final conversation = state.conversation;
    if (conversation == null) return;
    await _checkAndUpdateAccessToken(conversation.credentials.token);
    await _chat.sendMessage(
      message: message,
      conversationId: conversation.conversationId,
      participantSid: conversation.credentials.participantSid ?? '',
    );
  }
}

StreamTransformer<Map, ConversationMessage> messagesTransformer =
    StreamTransformer<Map, ConversationMessage>.fromHandlers(
  handleData: (event, sink) {
    final twilioMessage = _mapToMessage(event);

    final message = _mapTwilioMessageToConversationMessage(twilioMessage);
    sink.add(message);
  },
);

TwilioMessage _mapToMessage(dynamic message) {
  final json = jsonDecode(jsonEncode(message));
  return TwilioMessage.fromJson(json);
}

ConversationMessage _mapTwilioMessageToConversationMessage(
  TwilioMessage message,
) {
  return ConversationMessage(
    participantSid: message.participantSid,
    participantIdentity: message.author,
    text: message.body,
    timestamp: message.dateCreated,
    //TODO: how to map this?
    participantId: 0,
    sid: message.sid,
  );
}
