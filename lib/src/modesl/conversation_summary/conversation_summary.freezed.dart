// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationSummary _$ConversationSummaryFromJson(Map<String, dynamic> json) {
  return _ConversationSummary.fromJson(json);
}

/// @nodoc
mixin _$ConversationSummary {
  int get conversationId => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  String? get conversationSid => throw _privateConstructorUsedError;
  int? get programId => throw _privateConstructorUsedError;
  List<ConversationMessage>? get messageTail =>
      throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  bool get rejoinable => throw _privateConstructorUsedError;
  ConversationCredentials get credentials => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationSummaryCopyWith<ConversationSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationSummaryCopyWith<$Res> {
  factory $ConversationSummaryCopyWith(
          ConversationSummary value, $Res Function(ConversationSummary) then) =
      _$ConversationSummaryCopyWithImpl<$Res, ConversationSummary>;
  @useResult
  $Res call(
      {int conversationId,
      DateTime startTime,
      DateTime? endTime,
      String? conversationSid,
      int? programId,
      List<ConversationMessage>? messageTail,
      int status,
      bool rejoinable,
      ConversationCredentials credentials});

  $ConversationCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class _$ConversationSummaryCopyWithImpl<$Res, $Val extends ConversationSummary>
    implements $ConversationSummaryCopyWith<$Res> {
  _$ConversationSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? conversationSid = freezed,
    Object? programId = freezed,
    Object? messageTail = freezed,
    Object? status = null,
    Object? rejoinable = null,
    Object? credentials = null,
  }) {
    return _then(_value.copyWith(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      conversationSid: freezed == conversationSid
          ? _value.conversationSid
          : conversationSid // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageTail: freezed == messageTail
          ? _value.messageTail
          : messageTail // ignore: cast_nullable_to_non_nullable
              as List<ConversationMessage>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      rejoinable: null == rejoinable
          ? _value.rejoinable
          : rejoinable // ignore: cast_nullable_to_non_nullable
              as bool,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as ConversationCredentials,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationCredentialsCopyWith<$Res> get credentials {
    return $ConversationCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConversationSummaryImplCopyWith<$Res>
    implements $ConversationSummaryCopyWith<$Res> {
  factory _$$ConversationSummaryImplCopyWith(_$ConversationSummaryImpl value,
          $Res Function(_$ConversationSummaryImpl) then) =
      __$$ConversationSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int conversationId,
      DateTime startTime,
      DateTime? endTime,
      String? conversationSid,
      int? programId,
      List<ConversationMessage>? messageTail,
      int status,
      bool rejoinable,
      ConversationCredentials credentials});

  @override
  $ConversationCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class __$$ConversationSummaryImplCopyWithImpl<$Res>
    extends _$ConversationSummaryCopyWithImpl<$Res, _$ConversationSummaryImpl>
    implements _$$ConversationSummaryImplCopyWith<$Res> {
  __$$ConversationSummaryImplCopyWithImpl(_$ConversationSummaryImpl _value,
      $Res Function(_$ConversationSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? conversationSid = freezed,
    Object? programId = freezed,
    Object? messageTail = freezed,
    Object? status = null,
    Object? rejoinable = null,
    Object? credentials = null,
  }) {
    return _then(_$ConversationSummaryImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      conversationSid: freezed == conversationSid
          ? _value.conversationSid
          : conversationSid // ignore: cast_nullable_to_non_nullable
              as String?,
      programId: freezed == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageTail: freezed == messageTail
          ? _value._messageTail
          : messageTail // ignore: cast_nullable_to_non_nullable
              as List<ConversationMessage>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      rejoinable: null == rejoinable
          ? _value.rejoinable
          : rejoinable // ignore: cast_nullable_to_non_nullable
              as bool,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as ConversationCredentials,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationSummaryImpl implements _ConversationSummary {
  const _$ConversationSummaryImpl(
      {required this.conversationId,
      required this.startTime,
      this.endTime,
      this.conversationSid,
      this.programId,
      final List<ConversationMessage>? messageTail,
      required this.status,
      required this.rejoinable,
      required this.credentials})
      : _messageTail = messageTail;

  factory _$ConversationSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationSummaryImplFromJson(json);

  @override
  final int conversationId;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final String? conversationSid;
  @override
  final int? programId;
  final List<ConversationMessage>? _messageTail;
  @override
  List<ConversationMessage>? get messageTail {
    final value = _messageTail;
    if (value == null) return null;
    if (_messageTail is EqualUnmodifiableListView) return _messageTail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int status;
  @override
  final bool rejoinable;
  @override
  final ConversationCredentials credentials;

  @override
  String toString() {
    return 'ConversationSummary(conversationId: $conversationId, startTime: $startTime, endTime: $endTime, conversationSid: $conversationSid, programId: $programId, messageTail: $messageTail, status: $status, rejoinable: $rejoinable, credentials: $credentials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationSummaryImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.conversationSid, conversationSid) ||
                other.conversationSid == conversationSid) &&
            (identical(other.programId, programId) ||
                other.programId == programId) &&
            const DeepCollectionEquality()
                .equals(other._messageTail, _messageTail) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rejoinable, rejoinable) ||
                other.rejoinable == rejoinable) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      conversationId,
      startTime,
      endTime,
      conversationSid,
      programId,
      const DeepCollectionEquality().hash(_messageTail),
      status,
      rejoinable,
      credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationSummaryImplCopyWith<_$ConversationSummaryImpl> get copyWith =>
      __$$ConversationSummaryImplCopyWithImpl<_$ConversationSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationSummaryImplToJson(
      this,
    );
  }
}

abstract class _ConversationSummary implements ConversationSummary {
  const factory _ConversationSummary(
          {required final int conversationId,
          required final DateTime startTime,
          final DateTime? endTime,
          final String? conversationSid,
          final int? programId,
          final List<ConversationMessage>? messageTail,
          required final int status,
          required final bool rejoinable,
          required final ConversationCredentials credentials}) =
      _$ConversationSummaryImpl;

  factory _ConversationSummary.fromJson(Map<String, dynamic> json) =
      _$ConversationSummaryImpl.fromJson;

  @override
  int get conversationId;
  @override
  DateTime get startTime;
  @override
  DateTime? get endTime;
  @override
  String? get conversationSid;
  @override
  int? get programId;
  @override
  List<ConversationMessage>? get messageTail;
  @override
  int get status;
  @override
  bool get rejoinable;
  @override
  ConversationCredentials get credentials;
  @override
  @JsonKey(ignore: true)
  _$$ConversationSummaryImplCopyWith<_$ConversationSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
