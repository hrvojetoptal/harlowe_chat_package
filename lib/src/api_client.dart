import 'package:dio/dio.dart';
import 'package:harlowe_chat_package/src/modesl/task/task_resource.dart';
import 'package:retrofit/retrofit.dart';

import 'modesl/conversation_credentials/conversation_credentials.dart';
import 'modesl/conversation_message/conversation_message.dart';
import 'modesl/conversation_summary/conversation_summary.dart';

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

  @GET('task/wrapuptask/{taskSid}')
  Future<TaskResource> wrapUpTask(
    @Path('taskSid') String taskSid,
  );
}
