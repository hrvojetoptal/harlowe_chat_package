import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harlowe_chat_package/src/models/conversation_credentials/conversation_credentials.dart';
import 'package:harlowe_chat_package/src/models/conversation_message/conversation_message.dart';

part 'conversation_summary.freezed.dart';
part 'conversation_summary.g.dart';

@freezed
class ConversationSummary with _$ConversationSummary {
  const factory ConversationSummary({
    required int conversationId,
    required DateTime startTime,
    DateTime? endTime,
    String? conversationSid,
    int? programId,
    List<ConversationMessage>? messageTail,
    required int status,
    required bool rejoinable,
    required ConversationCredentials credentials,
  }) = _ConversationSummary;

  factory ConversationSummary.fromJson(Map<String, dynamic> json) =>
      _$ConversationSummaryFromJson(json);
}
