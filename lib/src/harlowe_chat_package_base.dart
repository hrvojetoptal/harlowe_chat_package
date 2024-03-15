import 'dart:async';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:hive/hive.dart';

import '../harlowe_chat_package.dart';
import 'api_client.dart';
import 'dartz_extension.dart';
import 'failure.dart';

class HarloweChat {
  final String baseUrl;
  final String? hivePath;

  HarloweChat({
    required this.baseUrl,
    this.hivePath,
  }) {
    if (hivePath != null) Hive.init(hivePath);
  }

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

  EitherFailureOr<ConversationCredentials> createConversation({
    required String firstName,
    required String lastName,
    String? email,
    required String memberId,
    required int programId,
  }) async {
    try {
      final response = await _apiClient.createConversation(
        firstName: firstName,
        lastName: lastName,
        email: email,
        memberId: memberId,
        programId: programId,
      );
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to create conversation',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<List<ConversationSummary>> getConversationsFromPhiId(
    int phiId,
  ) async {
    try {
      final response = await _apiClient.getConversationsFromPhiId(phiId);
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to get conversation',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<List<ConversationSummary>> getConversationsFromUserId(
    int userId,
  ) async {
    try {
      final response = await _apiClient.getConversationsFromUserId(userId);
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to get conversation',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<bool> sendMessage({
    required int conversationId,
    required String participantSid,
    required String message,
  }) async {
    try {
      final response = await _apiClient.sendMessage(
        message: message,
        conversationId: conversationId,
        participantSid: participantSid,
      );
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to send message',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<List<ConversationMessage>> getConversationMessages(
    String conversationSid,
  ) async {
    try {
      final response =
          await _apiClient.getConversationMessages(conversationSid);
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to get conversation messages',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<ConversationCredentials> joinConversation({
    required String conversationSid,
    int? userId,
    int? phiId,
    String? firstName,
    String? lastName,
    String? email,
    String? memberId,
  }) async {
    try {
      final response = await _apiClient.joinConversation(
        conversationSid: conversationSid,
        userId: userId,
        phiId: phiId,
        firstName: firstName,
        lastName: lastName,
        email: email,
        memberId: memberId,
      );
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to join conversation',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<ConversationCredentials> reJoinConversation({
    required int conversationId,
    required String existingIdentity,
  }) async {
    try {
      final response =
          await _apiClient.reJoinConversation(conversationId, existingIdentity);
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to rejoin conversation',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<TaskResource> wrapUpTask({
    required String taskSid,
    required String conversationSid,
  }) async {
    try {
      final response = await _apiClient.wrapUpTask(taskSid, conversationSid);
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to wrap up task',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<List<ConversationParticipant>> getParticipants(
      int conversationId) async {
    try {
      final response = await _apiClient.getParticipants(conversationId);
      return Right(response);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Failed to get participants',
        stackTrace: stackTrace,
        error: error,
      ));
    }
  }

  EitherFailureOr<Uint8List> getParticipantPhoto({
    required int conversationId,
    required int participantId,
  }) async {
    try {
      final response = await _apiClient.getParticipantPhoto(
        conversationId,
        participantId,
      );
      final bytes = await _getBytesFromStream(response.data as ResponseBody);
      return Right(bytes);
    } catch (error, stackTrace) {
      return Left(Failure.generic(
        title: 'Error while getting photo',
        stackTrace: stackTrace,
      ));
    }
  }

  Future<Uint8List> _getBytesFromStream(ResponseBody data) async {
    Completer<Uint8List> completer = Completer();
    List<int> bytes = [];

    data.stream.listen(
      (List<int> data) {
        bytes.addAll(data);
      },
      onDone: () {
        completer.complete(
          Uint8List.fromList(bytes),
        );
      },
      onError: (error, StackTrace stackTrace) {
        print(error);
        completer.completeError(error, stackTrace);
      },
    );

    return await completer.future;
  }
}
