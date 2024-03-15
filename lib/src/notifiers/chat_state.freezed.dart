// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  ConversationSummary? get conversation => throw _privateConstructorUsedError;
  List<ConversationMessage>? get messages => throw _privateConstructorUsedError;
  List<ConversationParticipant>? get participants =>
      throw _privateConstructorUsedError;
  Map<String, Uint8List?>? get participantImages =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {ConversationSummary? conversation,
      List<ConversationMessage>? messages,
      List<ConversationParticipant>? participants,
      Map<String, Uint8List?>? participantImages,
      bool loading});

  $ConversationSummaryCopyWith<$Res>? get conversation;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = freezed,
    Object? messages = freezed,
    Object? participants = freezed,
    Object? participantImages = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationSummary?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ConversationMessage>?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ConversationParticipant>?,
      participantImages: freezed == participantImages
          ? _value.participantImages
          : participantImages // ignore: cast_nullable_to_non_nullable
              as Map<String, Uint8List?>?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationSummaryCopyWith<$Res>? get conversation {
    if (_value.conversation == null) {
      return null;
    }

    return $ConversationSummaryCopyWith<$Res>(_value.conversation!, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ConversationSummary? conversation,
      List<ConversationMessage>? messages,
      List<ConversationParticipant>? participants,
      Map<String, Uint8List?>? participantImages,
      bool loading});

  @override
  $ConversationSummaryCopyWith<$Res>? get conversation;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = freezed,
    Object? messages = freezed,
    Object? participants = freezed,
    Object? participantImages = freezed,
    Object? loading = null,
  }) {
    return _then(_$ChatStateImpl(
      conversation: freezed == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationSummary?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ConversationMessage>?,
      participants: freezed == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ConversationParticipant>?,
      participantImages: freezed == participantImages
          ? _value._participantImages
          : participantImages // ignore: cast_nullable_to_non_nullable
              as Map<String, Uint8List?>?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {this.conversation,
      final List<ConversationMessage>? messages,
      final List<ConversationParticipant>? participants,
      final Map<String, Uint8List?>? participantImages,
      this.loading = false})
      : _messages = messages,
        _participants = participants,
        _participantImages = participantImages;

  @override
  final ConversationSummary? conversation;
  final List<ConversationMessage>? _messages;
  @override
  List<ConversationMessage>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ConversationParticipant>? _participants;
  @override
  List<ConversationParticipant>? get participants {
    final value = _participants;
    if (value == null) return null;
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, Uint8List?>? _participantImages;
  @override
  Map<String, Uint8List?>? get participantImages {
    final value = _participantImages;
    if (value == null) return null;
    if (_participantImages is EqualUnmodifiableMapView)
      return _participantImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'ChatState(conversation: $conversation, messages: $messages, participants: $participants, participantImages: $participantImages, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality()
                .equals(other._participantImages, _participantImages) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      conversation,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_participantImages),
      loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final ConversationSummary? conversation,
      final List<ConversationMessage>? messages,
      final List<ConversationParticipant>? participants,
      final Map<String, Uint8List?>? participantImages,
      final bool loading}) = _$ChatStateImpl;

  @override
  ConversationSummary? get conversation;
  @override
  List<ConversationMessage>? get messages;
  @override
  List<ConversationParticipant>? get participants;
  @override
  Map<String, Uint8List?>? get participantImages;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
