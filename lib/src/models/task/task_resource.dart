import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_resource.freezed.dart';
part 'task_resource.g.dart';

@freezed
class TaskResource with _$TaskResource {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TaskResource({
    String? accountSid,
    String? dateCreated,
    String? dateUpdated,
    String? friendlyName,
    dynamic links,
    String? assistantSid,
    String? sid,
    String? uniqueName,
    String? actionsUrl,
    String? url,
  }) = _TaskResource;

  factory TaskResource.fromJson(Map<String, dynamic> json) =>
      _$TaskResourceFromJson(json);
}
