// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_conversation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateConversationRequestImpl _$$CreateConversationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateConversationRequestImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      memberId: json['memberId'] as String,
      programId: json['programId'] as int,
    );

Map<String, dynamic> _$$CreateConversationRequestImplToJson(
        _$CreateConversationRequestImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'memberId': instance.memberId,
      'programId': instance.programId,
    };
