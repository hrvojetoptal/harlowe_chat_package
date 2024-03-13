// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationCredentialsImpl _$$ConversationCredentialsImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationCredentialsImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      callerPhiId: json['callerPhiId'] as int?,
      memberId: json['memberId'] as String?,
      email: json['email'] as String?,
      programId: json['programId'] as int?,
      programName: json['programName'] as String?,
      twilioQueue: json['twilioQueue'] as String?,
      personality: json['personality'] as String?,
      emailSuffix: json['emailSuffix'] as String?,
      conversationSid: json['conversationSid'] as String?,
      participantSid: json['participantSid'] as String?,
      participantIdentity: json['participantIdentity'] as String?,
      taskSid: json['taskSid'] as String?,
      token: json['token'] as String?,
      conversationId: json['conversationId'] as int?,
    );

Map<String, dynamic> _$$ConversationCredentialsImplToJson(
        _$ConversationCredentialsImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'callerPhiId': instance.callerPhiId,
      'memberId': instance.memberId,
      'email': instance.email,
      'programId': instance.programId,
      'programName': instance.programName,
      'twilioQueue': instance.twilioQueue,
      'personality': instance.personality,
      'emailSuffix': instance.emailSuffix,
      'conversationSid': instance.conversationSid,
      'participantSid': instance.participantSid,
      'participantIdentity': instance.participantIdentity,
      'taskSid': instance.taskSid,
      'token': instance.token,
      'conversationId': instance.conversationId,
    };
