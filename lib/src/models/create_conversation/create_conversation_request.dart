import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_conversation_request.freezed.dart';
part 'create_conversation_request.g.dart';

@freezed
class CreateConversationRequest with _$CreateConversationRequest {
  const factory CreateConversationRequest({
    required String firstName,
    required String lastName,
    required String email,
    required String memberId,
    required int programId,
  }) = _CreateConversationRequest;

  factory CreateConversationRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateConversationRequestFromJson(json);
}
