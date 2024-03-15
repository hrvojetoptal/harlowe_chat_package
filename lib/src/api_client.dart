import 'package:dio/dio.dart';
import 'package:harlowe_chat_package/src/models/task/task_resource.dart';
import 'package:retrofit/retrofit.dart';

import 'models/conversation_credentials/conversation_credentials.dart';
import 'models/conversation_message/conversation_message.dart';
import 'models/conversation_participant/conversation_participant.dart';
import 'models/conversation_summary/conversation_summary.dart';

part 'api_client.g.dart';

@RestApi()
abstract class PublicApiClient {
  factory PublicApiClient(Dio dio, {String baseUrl}) = _PublicApiClient;

  @GET('conversation/createconversation')
  Future<ConversationCredentials> createConversation({
    @Query('firstName') required String firstName,
    @Query('lastName') required String lastName,
    @Query('email') String? email,
    @Query('memberId') required String memberId,
    @Query('programId') required int programId,
  });

  @GET('conversations/phi/{phiId}')
  Future<List<ConversationSummary>> getConversationsFromPhiId(
    @Path('phiId') int phiId,
  );

  @GET('conversations/user/{userId}')
  Future<List<ConversationSummary>> getConversationsFromUserId(
    @Path('userId') int userId,
  );

  @GET('conversation/sendmessage/{conversationId}/as/{participantSid}')
  Future<bool> sendMessage({
    @Path('conversationId') required int conversationId,
    @Path('participantSid') required String participantSid,
    @Query('message') required String message,
  });

  @GET('conversation/getconversationmessages/{conversationSid}')
  Future<List<ConversationMessage>> getConversationMessages(
    @Path('conversationSid') String conversationSid,
  );

  @GET('conversation/joinconversation/{conversationSid}')
  Future<ConversationCredentials> joinConversation({
    @Path('conversationSid') required String conversationSid,
    @Query('userId') int? userId,
    @Query('phiId') int? phiId,
    @Query('firstName') String? firstName,
    @Query('lastName') String? lastName,
    @Query('email') String? email,
    @Query('memberId') String? memberId,
  });

  @GET('conversation/{conversationId}/rejoin/{existingIdentity}')
  Future<ConversationCredentials> reJoinConversation(
    @Path('conversationId') int conversationId,
    @Path('existingIdentity') String existingIdentity,
  );

  @GET('task/wrapuptask/{taskSid}/{conversationSid}')
  Future<TaskResource> wrapUpTask(
    @Path('taskSid') String taskSid,
    @Path('conversationSid') String conversationSid,
  );

  @GET('conversation/{conversationId}/participants')
  Future<List<ConversationParticipant>> getParticipants(
    @Path('conversationId') int conversationId,
  );

  @GET('conversation/{conversationId}/participants/{participantId}/photo')
  @DioResponseType(ResponseType.stream)
  Future<HttpResponse> getParticipantPhoto(
    @Path('conversationId') int conversationId,
    @Path('participantId') int participantId,
  );
}
