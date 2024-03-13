import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_credentials.freezed.dart';
part 'conversation_credentials.g.dart';

@freezed
class ConversationCredentials with _$ConversationCredentials {
  const factory ConversationCredentials({
    String? firstName,
    String? lastName,
    int? callerPhiId,
    String? memberId,
    String? email,
    int? programId,
    String? programName,
    String? twilioQueue,
    String? personality,
    String? emailSuffix,
    String? conversationSid,
    String? participantSid,
    String? participantIdentity,
    String? taskSid,
    String? token,
    int? conversationId,
  }) = _ConversationCredentials;

  factory ConversationCredentials.fromJson(Map<String, dynamic> json) =>
      _$ConversationCredentialsFromJson(json);
}
