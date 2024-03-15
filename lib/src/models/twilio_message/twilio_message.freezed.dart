// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'twilio_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TwilioMessage _$TwilioMessageFromJson(Map<String, dynamic> json) {
  return _TwilioMessage.fromJson(json);
}

/// @nodoc
mixin _$TwilioMessage {
  String get sid => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get dateCreated => throw _privateConstructorUsedError;
  List<dynamic> get attachedMedia => throw _privateConstructorUsedError;
  String? get participant => throw _privateConstructorUsedError;
  String get participantSid => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwilioMessageCopyWith<TwilioMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwilioMessageCopyWith<$Res> {
  factory $TwilioMessageCopyWith(
          TwilioMessage value, $Res Function(TwilioMessage) then) =
      _$TwilioMessageCopyWithImpl<$Res, TwilioMessage>;
  @useResult
  $Res call(
      {String sid,
      String author,
      String body,
      DateTime dateCreated,
      List<dynamic> attachedMedia,
      String? participant,
      String participantSid,
      int index});
}

/// @nodoc
class _$TwilioMessageCopyWithImpl<$Res, $Val extends TwilioMessage>
    implements $TwilioMessageCopyWith<$Res> {
  _$TwilioMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
    Object? author = null,
    Object? body = null,
    Object? dateCreated = null,
    Object? attachedMedia = null,
    Object? participant = freezed,
    Object? participantSid = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachedMedia: null == attachedMedia
          ? _value.attachedMedia
          : attachedMedia // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as String?,
      participantSid: null == participantSid
          ? _value.participantSid
          : participantSid // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TwilioMessageImplCopyWith<$Res>
    implements $TwilioMessageCopyWith<$Res> {
  factory _$$TwilioMessageImplCopyWith(
          _$TwilioMessageImpl value, $Res Function(_$TwilioMessageImpl) then) =
      __$$TwilioMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sid,
      String author,
      String body,
      DateTime dateCreated,
      List<dynamic> attachedMedia,
      String? participant,
      String participantSid,
      int index});
}

/// @nodoc
class __$$TwilioMessageImplCopyWithImpl<$Res>
    extends _$TwilioMessageCopyWithImpl<$Res, _$TwilioMessageImpl>
    implements _$$TwilioMessageImplCopyWith<$Res> {
  __$$TwilioMessageImplCopyWithImpl(
      _$TwilioMessageImpl _value, $Res Function(_$TwilioMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sid = null,
    Object? author = null,
    Object? body = null,
    Object? dateCreated = null,
    Object? attachedMedia = null,
    Object? participant = freezed,
    Object? participantSid = null,
    Object? index = null,
  }) {
    return _then(_$TwilioMessageImpl(
      sid: null == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachedMedia: null == attachedMedia
          ? _value._attachedMedia
          : attachedMedia // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as String?,
      participantSid: null == participantSid
          ? _value.participantSid
          : participantSid // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwilioMessageImpl implements _TwilioMessage {
  const _$TwilioMessageImpl(
      {required this.sid,
      required this.author,
      required this.body,
      required this.dateCreated,
      required final List<dynamic> attachedMedia,
      this.participant,
      required this.participantSid,
      required this.index})
      : _attachedMedia = attachedMedia;

  factory _$TwilioMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwilioMessageImplFromJson(json);

  @override
  final String sid;
  @override
  final String author;
  @override
  final String body;
  @override
  final DateTime dateCreated;
  final List<dynamic> _attachedMedia;
  @override
  List<dynamic> get attachedMedia {
    if (_attachedMedia is EqualUnmodifiableListView) return _attachedMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachedMedia);
  }

  @override
  final String? participant;
  @override
  final String participantSid;
  @override
  final int index;

  @override
  String toString() {
    return 'TwilioMessage(sid: $sid, author: $author, body: $body, dateCreated: $dateCreated, attachedMedia: $attachedMedia, participant: $participant, participantSid: $participantSid, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwilioMessageImpl &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            const DeepCollectionEquality()
                .equals(other._attachedMedia, _attachedMedia) &&
            (identical(other.participant, participant) ||
                other.participant == participant) &&
            (identical(other.participantSid, participantSid) ||
                other.participantSid == participantSid) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sid,
      author,
      body,
      dateCreated,
      const DeepCollectionEquality().hash(_attachedMedia),
      participant,
      participantSid,
      index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwilioMessageImplCopyWith<_$TwilioMessageImpl> get copyWith =>
      __$$TwilioMessageImplCopyWithImpl<_$TwilioMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwilioMessageImplToJson(
      this,
    );
  }
}

abstract class _TwilioMessage implements TwilioMessage {
  const factory _TwilioMessage(
      {required final String sid,
      required final String author,
      required final String body,
      required final DateTime dateCreated,
      required final List<dynamic> attachedMedia,
      final String? participant,
      required final String participantSid,
      required final int index}) = _$TwilioMessageImpl;

  factory _TwilioMessage.fromJson(Map<String, dynamic> json) =
      _$TwilioMessageImpl.fromJson;

  @override
  String get sid;
  @override
  String get author;
  @override
  String get body;
  @override
  DateTime get dateCreated;
  @override
  List<dynamic> get attachedMedia;
  @override
  String? get participant;
  @override
  String get participantSid;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$TwilioMessageImplCopyWith<_$TwilioMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
