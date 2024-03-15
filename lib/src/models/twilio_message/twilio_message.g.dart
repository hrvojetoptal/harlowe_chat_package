// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twilio_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwilioMessageImpl _$$TwilioMessageImplFromJson(Map<String, dynamic> json) =>
    _$TwilioMessageImpl(
      sid: json['sid'] as String,
      author: json['author'] as String,
      body: json['body'] as String,
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      attachedMedia: json['attachedMedia'] as List<dynamic>,
      participant: json['participant'] as String?,
      participantSid: json['participantSid'] as String,
      index: json['index'] as int,
    );

Map<String, dynamic> _$$TwilioMessageImplToJson(_$TwilioMessageImpl instance) =>
    <String, dynamic>{
      'sid': instance.sid,
      'author': instance.author,
      'body': instance.body,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'attachedMedia': instance.attachedMedia,
      'participant': instance.participant,
      'participantSid': instance.participantSid,
      'index': instance.index,
    };
