// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationMessageImpl _$$ConversationMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationMessageImpl(
      participantSid: json['participantSid'] as String?,
      participantIdentity: json['participantIdentity'] as String?,
      participantId: json['participantId'] as int,
      timestamp: DateTime.parse(json['timestamp'] as String),
      text: json['text'] as String?,
      sid: json['sid'] as String?,
    );

Map<String, dynamic> _$$ConversationMessageImplToJson(
        _$ConversationMessageImpl instance) =>
    <String, dynamic>{
      'participantSid': instance.participantSid,
      'participantIdentity': instance.participantIdentity,
      'participantId': instance.participantId,
      'timestamp': instance.timestamp.toIso8601String(),
      'text': instance.text,
      'sid': instance.sid,
    };
