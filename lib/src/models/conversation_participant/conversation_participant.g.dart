// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationParticipantImpl _$$ConversationParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationParticipantImpl(
      participantId: json['participantId'] as int,
      conversationId: json['conversationId'] as int,
      chatIdentity: json['chatIdentity'] as String?,
      participantSid: json['participantSid'] as String?,
      userId: json['userId'] as int?,
      memberId: json['memberId'] as String?,
      anonFirstName: json['anonFirstName'] as String?,
      anonLastName: json['anonLastName'] as String?,
      anonEmail: json['anonEmail'] as String?,
      phiId: json['phiId'] as int?,
    );

Map<String, dynamic> _$$ConversationParticipantImplToJson(
        _$ConversationParticipantImpl instance) =>
    <String, dynamic>{
      'participantId': instance.participantId,
      'conversationId': instance.conversationId,
      'chatIdentity': instance.chatIdentity,
      'participantSid': instance.participantSid,
      'userId': instance.userId,
      'memberId': instance.memberId,
      'anonFirstName': instance.anonFirstName,
      'anonLastName': instance.anonLastName,
      'anonEmail': instance.anonEmail,
      'phiId': instance.phiId,
    };
