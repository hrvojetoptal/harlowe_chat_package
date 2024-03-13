// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_conversation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateConversationRequest _$CreateConversationRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateConversationRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateConversationRequest {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get memberId => throw _privateConstructorUsedError;
  int get programId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateConversationRequestCopyWith<CreateConversationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConversationRequestCopyWith<$Res> {
  factory $CreateConversationRequestCopyWith(CreateConversationRequest value,
          $Res Function(CreateConversationRequest) then) =
      _$CreateConversationRequestCopyWithImpl<$Res, CreateConversationRequest>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String memberId,
      int programId});
}

/// @nodoc
class _$CreateConversationRequestCopyWithImpl<$Res,
        $Val extends CreateConversationRequest>
    implements $CreateConversationRequestCopyWith<$Res> {
  _$CreateConversationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? memberId = null,
    Object? programId = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateConversationRequestImplCopyWith<$Res>
    implements $CreateConversationRequestCopyWith<$Res> {
  factory _$$CreateConversationRequestImplCopyWith(
          _$CreateConversationRequestImpl value,
          $Res Function(_$CreateConversationRequestImpl) then) =
      __$$CreateConversationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String email,
      String memberId,
      int programId});
}

/// @nodoc
class __$$CreateConversationRequestImplCopyWithImpl<$Res>
    extends _$CreateConversationRequestCopyWithImpl<$Res,
        _$CreateConversationRequestImpl>
    implements _$$CreateConversationRequestImplCopyWith<$Res> {
  __$$CreateConversationRequestImplCopyWithImpl(
      _$CreateConversationRequestImpl _value,
      $Res Function(_$CreateConversationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? memberId = null,
    Object? programId = null,
  }) {
    return _then(_$CreateConversationRequestImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      programId: null == programId
          ? _value.programId
          : programId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateConversationRequestImpl implements _CreateConversationRequest {
  const _$CreateConversationRequestImpl(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.memberId,
      required this.programId});

  factory _$CreateConversationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateConversationRequestImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String memberId;
  @override
  final int programId;

  @override
  String toString() {
    return 'CreateConversationRequest(firstName: $firstName, lastName: $lastName, email: $email, memberId: $memberId, programId: $programId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConversationRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.programId, programId) ||
                other.programId == programId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, email, memberId, programId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConversationRequestImplCopyWith<_$CreateConversationRequestImpl>
      get copyWith => __$$CreateConversationRequestImplCopyWithImpl<
          _$CreateConversationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateConversationRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateConversationRequest implements CreateConversationRequest {
  const factory _CreateConversationRequest(
      {required final String firstName,
      required final String lastName,
      required final String email,
      required final String memberId,
      required final int programId}) = _$CreateConversationRequestImpl;

  factory _CreateConversationRequest.fromJson(Map<String, dynamic> json) =
      _$CreateConversationRequestImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get memberId;
  @override
  int get programId;
  @override
  @JsonKey(ignore: true)
  _$$CreateConversationRequestImplCopyWith<_$CreateConversationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
