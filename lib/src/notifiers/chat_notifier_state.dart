import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harlowe_chat_package/harlowe_chat_package.dart';

part 'chat_notifier_state.freezed.dart';

@freezed
class ChatNotifierState with _$ChatNotifierState {
  const factory ChatNotifierState({
    ConversationSummary? conversation,
    List<ConversationMessage>? messages,
    List<ConversationParticipant>? participants,
    Map<String, Uint8List?>? participantImages,
    @Default(false) bool loading,
  }) = _ChatNotifierState;
}
