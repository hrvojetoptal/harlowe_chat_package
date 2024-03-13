// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationSummaryImpl _$$ConversationSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationSummaryImpl(
      conversationId: json['conversationId'] as int,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      conversationSid: json['conversationSid'] as String?,
      programId: json['programId'] as int?,
      messageTail: (json['messageTail'] as List<dynamic>?)
          ?.map((e) => ConversationMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int,
      rejoinable: json['rejoinable'] as bool,
      credentials: ConversationCredentials.fromJson(
          json['credentials'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConversationSummaryImplToJson(
        _$ConversationSummaryImpl instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'conversationSid': instance.conversationSid,
      'programId': instance.programId,
      'messageTail': instance.messageTail,
      'status': instance.status,
      'rejoinable': instance.rejoinable,
      'credentials': instance.credentials,
    };
