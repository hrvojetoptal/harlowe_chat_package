// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationMessage _$ConversationMessageFromJson(Map<String, dynamic> json) {
  return _ConversationMessage.fromJson(json);
}

/// @nodoc
mixin _$ConversationMessage {
  String? get participantSid => throw _privateConstructorUsedError;
  String? get participantIdentity => throw _privateConstructorUsedError;
  int get participantId => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get sid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationMessageCopyWith<ConversationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationMessageCopyWith<$Res> {
  factory $ConversationMessageCopyWith(
          ConversationMessage value, $Res Function(ConversationMessage) then) =
      _$ConversationMessageCopyWithImpl<$Res, ConversationMessage>;
  @useResult
  $Res call(
      {String? participantSid,
      String? participantIdentity,
      int participantId,
      DateTime timestamp,
      String? text,
      String? sid});
}

/// @nodoc
class _$ConversationMessageCopyWithImpl<$Res, $Val extends ConversationMessage>
    implements $ConversationMessageCopyWith<$Res> {
  _$ConversationMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantSid = freezed,
    Object? participantIdentity = freezed,
    Object? participantId = null,
    Object? timestamp = null,
    Object? text = freezed,
    Object? sid = freezed,
  }) {
    return _then(_value.copyWith(
      participantSid: freezed == participantSid
          ? _value.participantSid
          : participantSid // ignore: cast_nullable_to_non_nullable
              as String?,
      participantIdentity: freezed == participantIdentity
          ? _value.participantIdentity
          : participantIdentity // ignore: cast_nullable_to_non_nullable
              as String?,
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationMessageImplCopyWith<$Res>
    implements $ConversationMessageCopyWith<$Res> {
  factory _$$ConversationMessageImplCopyWith(_$ConversationMessageImpl value,
          $Res Function(_$ConversationMessageImpl) then) =
      __$$ConversationMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? participantSid,
      String? participantIdentity,
      int participantId,
      DateTime timestamp,
      String? text,
      String? sid});
}

/// @nodoc
class __$$ConversationMessageImplCopyWithImpl<$Res>
    extends _$ConversationMessageCopyWithImpl<$Res, _$ConversationMessageImpl>
    implements _$$ConversationMessageImplCopyWith<$Res> {
  __$$ConversationMessageImplCopyWithImpl(_$ConversationMessageImpl _value,
      $Res Function(_$ConversationMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantSid = freezed,
    Object? participantIdentity = freezed,
    Object? participantId = null,
    Object? timestamp = null,
    Object? text = freezed,
    Object? sid = freezed,
  }) {
    return _then(_$ConversationMessageImpl(
      participantSid: freezed == participantSid
          ? _value.participantSid
          : participantSid // ignore: cast_nullable_to_non_nullable
              as String?,
      participantIdentity: freezed == participantIdentity
          ? _value.participantIdentity
          : participantIdentity // ignore: cast_nullable_to_non_nullable
              as String?,
      participantId: null == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationMessageImpl implements _ConversationMessage {
  const _$ConversationMessageImpl(
      {this.participantSid,
      this.participantIdentity,
      required this.participantId,
      required this.timestamp,
      this.text,
      this.sid});

  factory _$ConversationMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationMessageImplFromJson(json);

  @override
  final String? participantSid;
  @override
  final String? participantIdentity;
  @override
  final int participantId;
  @override
  final DateTime timestamp;
  @override
  final String? text;
  @override
  final String? sid;

  @override
  String toString() {
    return 'ConversationMessage(participantSid: $participantSid, participantIdentity: $participantIdentity, participantId: $participantId, timestamp: $timestamp, text: $text, sid: $sid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationMessageImpl &&
            (identical(other.participantSid, participantSid) ||
                other.participantSid == participantSid) &&
            (identical(other.participantIdentity, participantIdentity) ||
                other.participantIdentity == participantIdentity) &&
            (identical(other.participantId, participantId) ||
                other.participantId == participantId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.sid, sid) || other.sid == sid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, participantSid,
      participantIdentity, participantId, timestamp, text, sid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationMessageImplCopyWith<_$ConversationMessageImpl> get copyWith =>
      __$$ConversationMessageImplCopyWithImpl<_$ConversationMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationMessageImplToJson(
      this,
    );
  }
}

abstract class _ConversationMessage implements ConversationMessage {
  const factory _ConversationMessage(
      {final String? participantSid,
      final String? participantIdentity,
      required final int participantId,
      required final DateTime timestamp,
      final String? text,
      final String? sid}) = _$ConversationMessageImpl;

  factory _ConversationMessage.fromJson(Map<String, dynamic> json) =
      _$ConversationMessageImpl.fromJson;

  @override
  String? get participantSid;
  @override
  String? get participantIdentity;
  @override
  int get participantId;
  @override
  DateTime get timestamp;
  @override
  String? get text;
  @override
  String? get sid;
  @override
  @JsonKey(ignore: true)
  _$$ConversationMessageImplCopyWith<_$ConversationMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
