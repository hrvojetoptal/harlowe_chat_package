import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:harlowe_chat_package/harlowe_chat_package.dart';
import 'package:harlowe_chat_package/src/presentation/app_reusable_container.dart';
import 'package:harlowe_chat_package/src/presentation/user_avatar_widget.dart';

import 'constants.dart';

class ChatPage extends ConsumerStatefulWidget {
  final ChatNotifierState chatState;
  final Function(String text) sendMessage;
  final Function() loadConversationMessages;

  const ChatPage({
    super.key,
    required this.chatState,
    required this.sendMessage,
    required this.loadConversationMessages,
  });

  @override
  ConsumerState createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late InputTextFieldController _inputController;

  void _handleSendPressed(types.PartialText message) {
    widget.sendMessage(message.text);
    _inputController.clear();
  }

  @override
  void initState() {
    _inputController = InputTextFieldController();
    Future.microtask(() {
      widget.loadConversationMessages();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentUser =
        widget.chatState.conversation?.credentials.participantIdentity ?? '';
    if (widget.chatState.loading) {
      return Center(child: CircularProgressIndicator());
    }
    return Stack(
      children: [
        Chat(
          messages: widget.chatState.messages?.map(mapToMessage).toList() ?? [],
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
            return UserAvatarWidget(
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
                  UserAvatarWidget(
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
