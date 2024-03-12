import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

import '../harlowe_chat_package.dart';
import 'api_client.dart';

class HarloweChat {
  final String baseUrl;

  HarloweChat({
    required this.baseUrl,
  });

  PublicApiClient get _apiClient => PublicApiClient(
        Dio(BaseOptions(baseUrl: baseUrl))
          ..interceptors.addAll(
            [
              LoggyDioInterceptor(
                requestBody: true,
                requestHeader: true,
              ),
            ],
          ),
      );

  Future<ConversationCredentials> createConversation({
    required String firstName,
    required String lastName,
    String? email,
    required String memberId,
    required int programId,
  }) async {
    return await _apiClient.createConversation(
      firstName: firstName,
      lastName: lastName,
      email: email,
      memberId: memberId,
      programId: programId,
    );
  }

  Future<List<ConversationSummary>> getConversationsFromPhiId(int phiId) async {
    return await _apiClient.getConversationsFromPhiId(phiId);
  }

  Future<List<ConversationSummary>> getConversationsFromUserId(
    int userId,
  ) async {
    return await _apiClient.getConversationsFromUserId(userId);
  }

  Future<bool> sendMessage({
    required int conversationId,
    required String participantSid,
    required String message,
  }) async {
    return await _apiClient.sendMessage(
      message: message,
      conversationId: conversationId,
      participantSid: participantSid,
    );
  }

  Future<List<ConversationMessage>> getConversationMessages(
    String conversationSid,
  ) async {
    return await _apiClient.getConversationMessages(conversationSid);
  }

  Future<ConversationCredentials> joinConversation({
    required String conversationSid,
    int? userId,
    int? phiId,
    String? firstName,
    String? lastName,
    String? email,
    String? memberId,
  }) {
    return _apiClient.joinConversation(
      conversationSid: conversationSid,
      userId: userId,
      phiId: phiId,
      firstName: firstName,
      lastName: lastName,
      email: email,
      memberId: memberId,
    );
  }

  Future<ConversationCredentials> reJoinConversation({
    required int conversationId,
    required String existingIdentity,
  }) {
    return _apiClient.reJoinConversation(conversationId, existingIdentity);
  }

  Future<TaskResource> wrapUpTask({
    required String taskSid,
    required String conversationSid,
  }) {
    return _apiClient.wrapUpTask(taskSid, conversationSid);
  }
}
