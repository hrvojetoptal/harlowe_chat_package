import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harlowe_chat_package/harlowe_chat_package.dart';
import 'package:harlowe_chat_package/src/presentation/app_reusable_container.dart';

class ChatPage extends ConsumerStatefulWidget {
  final ChatNotifierState chatState;
  final Function(String text) sendMessage;
  final Function() loadConversationMessages;
  final Function(String previous, String current) onMessageReceived;

  // final Function(
  //   ProviderListenable<ChatNotifierState> provider,
  //   void Function(ChatNotifierState? previous, ChatNotifierState next)
  //       listener, {
  //   void Function(Object error, StackTrace stackTrace)? onError,
  // }) listen;

  const ChatPage({
    super.key,
    required this.chatState,
    required this.onMessageReceived,
    required this.sendMessage,
    required this.loadConversationMessages,
    // required this.listen,
  });

  @override
  ConsumerState createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late InputTextFieldController _inputController;

  List<types.Message> _messages = [];

  void _handleSendPressed(types.PartialText message) {
    widget.sendMessage(message.text);
    _inputController.clear();
  }

  _insertMessage(ConversationMessage? message) {
    if (message != null) {
      final textMessage = mapToMessage(message);
      setState(() {
        _messages.insert(0, textMessage);
      });
    }
  }

  @override
  void initState() {
    _inputController = InputTextFieldController();
    Future.microtask(() {
      widget.loadConversationMessages();
    });

    setState(() {
      final state = widget.chatState;
      _messages = mapToMessages(state.messages ?? []);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentUser =
        widget.chatState.conversation?.credentials.participantIdentity ?? '';
    // widget.onMessageReceived();
    // ref.listen<ChatState>(chatNotifier, (previous, next) {
    //   if ((next.messages?.length ?? 0) > (previous?.messages?.length ?? 0)) {
    //     _insertMessage(next.messages?.lastOrNull);
    //   }
    // });
    if (widget.chatState.loading) {
      return Center(child: CircularProgressIndicator());
    }
    return Stack(
      children: [
        Chat(
          messages: _messages,
          onAttachmentPressed: null,
          onMessageTap: null,
          onPreviewDataFetched: null,
          onSendPressed: _handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          user: mapToUser(
            widget.chatState.conversation?.credentials,
          ),
          inputOptions: InputOptions(
            textEditingController: _inputController,
            sendButtonVisibilityMode: SendButtonVisibilityMode.always,
          ),
          avatarBuilder: (chatIdentity) {
            return UserAvatar(
              chatIdentity: chatIdentity.toString(),
              participantImages: widget.chatState.participantImages,
            );
          },
          bubbleBuilder: (
            child, {
            required message,
            required nextMessageInGroup,
          }) {
            final textMessage = (message as types.TextMessage);
            final text = textMessage.text;
            final isCurrentUser = (currentUser == message.author.id);
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: isCurrentUser
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6,
                    ),
                    child: AppReusableContainer(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Text(
                          text,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                ),
                if (isCurrentUser && !nextMessageInGroup)
                  UserAvatar(
                    chatIdentity: currentUser,
                    participantImages: widget.chatState.participantImages,
                  )
                else if (isCurrentUser && nextMessageInGroup)
                  SizedBox(width: 40)
              ],
            );
          },
          theme: DefaultChatTheme(
            seenIcon: Text('read', style: TextStyle(fontSize: 10.0)),
            backgroundColor: Colors.transparent,
            inputBackgroundColor: Colors.white,
            primaryColor: Colors.white,
            receivedEmojiMessageTextStyle: TextStyle(
              color: greyText,
              fontSize: 13,
              letterSpacing: harloweLetterSpacing,
              fontWeight: FontWeight.w400,
            ),
            sentMessageBodyTextStyle: TextStyle(
              color: greyText,
              fontSize: 13,
              letterSpacing: harloweLetterSpacing,
              fontWeight: FontWeight.w400,
            ),
            inputTextColor: Colors.black,
            inputMargin: const EdgeInsets.all(20.0),
            inputPadding: const EdgeInsets.all(20.0),
            inputContainerDecoration: BoxDecoration(
              border: Border.all(color: lightGreyText),
              borderRadius: softHarloweRadius,
            ),
            sendButtonIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: activeColors,
                ).createShader(bounds);
              },
              child: Icon(Icons.send),
            ),
            sendButtonMargin: EdgeInsets.zero,
          ),
        ),
        // Align(
        //   alignment: Alignment.bottomRight,
        //   child: Container(
        //     width: 100,
        //     margin: const EdgeInsets.only(
        //       right: 20.0,
        //       bottom: 20.0,
        //     ),
        //     decoration: BoxDecoration(
        //       gradient: getLinearGradient(ref),
        //       borderRadius: sendButtonRadius,
        //     ),
        //     child: TextButton(
        //       style: getButtonStyle(context),
        //       onPressed: () {
        //         _handleSendPressed(
        //           types.PartialText(text: _inputController.text.toString()),
        //         );
        //       },
        //       child: Text(
        //         'Send',
        //         style: TextStyle(
        //           letterSpacing: harloweLetterSpacing,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

List<types.Message> mapToMessages(
  List<ConversationMessage> conversationMessages,
) {
  final messages = conversationMessages.map(mapToMessage).toList();
  return messages.reversed.toList();
}

types.Message mapToMessage(ConversationMessage conversationMessage) {
  final json = {
    "author": {
      "firstName": conversationMessage.participantIdentity,
      "id": conversationMessage.participantIdentity,
      "lastName": "",
    },
    'createdAt': conversationMessage.timestamp.millisecondsSinceEpoch,
    'id': UniqueKey().hashCode.toString(),
    // 'repliedMessage': e.repliedMessage,
    'roomId': UniqueKey().hashCode.toString(),
    // 'showStatus': e.showStatus,
    // 'status': e.r,
    'type': 'text',
    'text': conversationMessage.text,
  };
  return types.Message.fromJson(json);
}

types.User mapToUser(ConversationCredentials? credentials) {
  return types.User(
    id: credentials?.participantIdentity ?? '',
    firstName: credentials?.firstName ?? '',
    lastName: credentials?.lastName ?? '',
  );
}

class UserAvatar extends ConsumerWidget {
  final String chatIdentity;
  final Map<String, Uint8List?>? participantImages;

  UserAvatar({
    super.key,
    required this.chatIdentity,
    required this.participantImages,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageBytes = participantImages?[chatIdentity];
    if (imageBytes != null) {
      return CircleAvatar(
        radius: 18,
        foregroundImage: MemoryImage(imageBytes),
      );
    }
    return CircleAvatar(
      radius: 18,
      child: Text(chatIdentity[0].toUpperCase()),
    );
  }
}

const List<Color> activeColors = [
  Color(0xFF3600F5),
  Color(0xFFBA007F),
];
const BorderRadius softHarloweRadius = BorderRadius.only(
  topRight: Radius.circular(0),
  topLeft: Radius.circular(8),
  bottomLeft: Radius.circular(8),
  bottomRight: Radius.circular(8),
);

final double harloweLetterSpacing = 0.6;
final Color greyText = Color(0xFF4B455E);
final Color lightGreyText = Color(0xFFA5A2AE);
