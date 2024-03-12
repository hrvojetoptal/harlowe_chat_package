// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskResourceImpl _$$TaskResourceImplFromJson(Map<String, dynamic> json) =>
    _$TaskResourceImpl(
      accountSid: json['account_sid'] as String?,
      dateCreated: json['date_created'] as String?,
      dateUpdated: json['date_updated'] as String?,
      friendlyName: json['friendly_name'] as String?,
      links: json['links'],
      assistantSid: json['assistant_sid'] as String?,
      sid: json['sid'] as String?,
      uniqueName: json['unique_name'] as String?,
      actionsUrl: json['actions_url'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TaskResourceImplToJson(_$TaskResourceImpl instance) =>
    <String, dynamic>{
      'account_sid': instance.accountSid,
      'date_created': instance.dateCreated,
      'date_updated': instance.dateUpdated,
      'friendly_name': instance.friendlyName,
      'links': instance.links,
      'assistant_sid': instance.assistantSid,
      'sid': instance.sid,
      'unique_name': instance.uniqueName,
      'actions_url': instance.actionsUrl,
      'url': instance.url,
    };
