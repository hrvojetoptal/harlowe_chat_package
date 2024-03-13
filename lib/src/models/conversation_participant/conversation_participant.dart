import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_participant.freezed.dart';
part 'conversation_participant.g.dart';

@freezed
class ConversationParticipant with _$ConversationParticipant {
  const factory ConversationParticipant({
    required int participantId,
    required int conversationId,
    String? chatIdentity,
    String? participantSid,
    int? userId,
    String? memberId,
    String? anonFirstName,
    String? anonLastName,
    String? anonEmail,
    int? phiId,
  }) = _ConversationParticipant;

  factory ConversationParticipant.fromJson(Map<String, dynamic> json) =>
      _$ConversationParticipantFromJson(json);
}
