import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_message.freezed.dart';
part 'conversation_message.g.dart';

@freezed
class ConversationMessage with _$ConversationMessage {
  const factory ConversationMessage({
    String? participantSid,
    String? participantIdentity,
    required int participantId,
    required DateTime timestamp,
    String? text,
    String? sid,
  }) = _ConversationMessage;

  factory ConversationMessage.fromJson(Map<String, dynamic> json) =>
      _$ConversationMessageFromJson(json);
}
