// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardId) load,
    required TResult Function(String frontText, String backText, int? deckId)
        save,
    required TResult Function() clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cardId)? load,
    TResult? Function(String frontText, String backText, int? deckId)? save,
    TResult? Function()? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardId)? load,
    TResult Function(String frontText, String backText, int? deckId)? save,
    TResult Function()? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCardLoad value) load,
    required TResult Function(CreateCardSave value) save,
    required TResult Function(CreateCardClear value) clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCardLoad value)? load,
    TResult? Function(CreateCardSave value)? save,
    TResult? Function(CreateCardClear value)? clear,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCardLoad value)? load,
    TResult Function(CreateCardSave value)? save,
    TResult Function(CreateCardClear value)? clear,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCardEventCopyWith<$Res> {
  factory $CreateCardEventCopyWith(
          CreateCardEvent value, $Res Function(CreateCardEvent) then) =
      _$CreateCardEventCopyWithImpl<$Res, CreateCardEvent>;
}

/// @nodoc
class _$CreateCardEventCopyWithImpl<$Res, $Val extends CreateCardEvent>
    implements $CreateCardEventCopyWith<$Res> {
  _$CreateCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateCardLoadImplCopyWith<$Res> {
  factory _$$CreateCardLoadImplCopyWith(_$CreateCardLoadImpl value,
          $Res Function(_$CreateCardLoadImpl) then) =
      __$$CreateCardLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cardId});
}

/// @nodoc
class __$$CreateCardLoadImplCopyWithImpl<$Res>
    extends _$CreateCardEventCopyWithImpl<$Res, _$CreateCardLoadImpl>
    implements _$$CreateCardLoadImplCopyWith<$Res> {
  __$$CreateCardLoadImplCopyWithImpl(
      _$CreateCardLoadImpl _value, $Res Function(_$CreateCardLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
  }) {
    return _then(_$CreateCardLoadImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateCardLoadImpl implements CreateCardLoad {
  const _$CreateCardLoadImpl({required this.cardId});

  @override
  final int cardId;

  @override
  String toString() {
    return 'CreateCardEvent.load(cardId: $cardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCardLoadImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardId);

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCardLoadImplCopyWith<_$CreateCardLoadImpl> get copyWith =>
      __$$CreateCardLoadImplCopyWithImpl<_$CreateCardLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardId) load,
    required TResult Function(String frontText, String backText, int? deckId)
        save,
    required TResult Function() clear,
  }) {
    return load(cardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cardId)? load,
    TResult? Function(String frontText, String backText, int? deckId)? save,
    TResult? Function()? clear,
  }) {
    return load?.call(cardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardId)? load,
    TResult Function(String frontText, String backText, int? deckId)? save,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(cardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCardLoad value) load,
    required TResult Function(CreateCardSave value) save,
    required TResult Function(CreateCardClear value) clear,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCardLoad value)? load,
    TResult? Function(CreateCardSave value)? save,
    TResult? Function(CreateCardClear value)? clear,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCardLoad value)? load,
    TResult Function(CreateCardSave value)? save,
    TResult Function(CreateCardClear value)? clear,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class CreateCardLoad implements CreateCardEvent {
  const factory CreateCardLoad({required final int cardId}) =
      _$CreateCardLoadImpl;

  int get cardId;

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCardLoadImplCopyWith<_$CreateCardLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCardSaveImplCopyWith<$Res> {
  factory _$$CreateCardSaveImplCopyWith(_$CreateCardSaveImpl value,
          $Res Function(_$CreateCardSaveImpl) then) =
      __$$CreateCardSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String frontText, String backText, int? deckId});
}

/// @nodoc
class __$$CreateCardSaveImplCopyWithImpl<$Res>
    extends _$CreateCardEventCopyWithImpl<$Res, _$CreateCardSaveImpl>
    implements _$$CreateCardSaveImplCopyWith<$Res> {
  __$$CreateCardSaveImplCopyWithImpl(
      _$CreateCardSaveImpl _value, $Res Function(_$CreateCardSaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontText = null,
    Object? backText = null,
    Object? deckId = freezed,
  }) {
    return _then(_$CreateCardSaveImpl(
      frontText: null == frontText
          ? _value.frontText
          : frontText // ignore: cast_nullable_to_non_nullable
              as String,
      backText: null == backText
          ? _value.backText
          : backText // ignore: cast_nullable_to_non_nullable
              as String,
      deckId: freezed == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CreateCardSaveImpl implements CreateCardSave {
  const _$CreateCardSaveImpl(
      {required this.frontText, required this.backText, this.deckId});

  @override
  final String frontText;
  @override
  final String backText;
  @override
  final int? deckId;

  @override
  String toString() {
    return 'CreateCardEvent.save(frontText: $frontText, backText: $backText, deckId: $deckId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCardSaveImpl &&
            (identical(other.frontText, frontText) ||
                other.frontText == frontText) &&
            (identical(other.backText, backText) ||
                other.backText == backText) &&
            (identical(other.deckId, deckId) || other.deckId == deckId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frontText, backText, deckId);

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCardSaveImplCopyWith<_$CreateCardSaveImpl> get copyWith =>
      __$$CreateCardSaveImplCopyWithImpl<_$CreateCardSaveImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardId) load,
    required TResult Function(String frontText, String backText, int? deckId)
        save,
    required TResult Function() clear,
  }) {
    return save(frontText, backText, deckId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cardId)? load,
    TResult? Function(String frontText, String backText, int? deckId)? save,
    TResult? Function()? clear,
  }) {
    return save?.call(frontText, backText, deckId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardId)? load,
    TResult Function(String frontText, String backText, int? deckId)? save,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(frontText, backText, deckId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCardLoad value) load,
    required TResult Function(CreateCardSave value) save,
    required TResult Function(CreateCardClear value) clear,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCardLoad value)? load,
    TResult? Function(CreateCardSave value)? save,
    TResult? Function(CreateCardClear value)? clear,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCardLoad value)? load,
    TResult Function(CreateCardSave value)? save,
    TResult Function(CreateCardClear value)? clear,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class CreateCardSave implements CreateCardEvent {
  const factory CreateCardSave(
      {required final String frontText,
      required final String backText,
      final int? deckId}) = _$CreateCardSaveImpl;

  String get frontText;
  String get backText;
  int? get deckId;

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCardSaveImplCopyWith<_$CreateCardSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCardClearImplCopyWith<$Res> {
  factory _$$CreateCardClearImplCopyWith(_$CreateCardClearImpl value,
          $Res Function(_$CreateCardClearImpl) then) =
      __$$CreateCardClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateCardClearImplCopyWithImpl<$Res>
    extends _$CreateCardEventCopyWithImpl<$Res, _$CreateCardClearImpl>
    implements _$$CreateCardClearImplCopyWith<$Res> {
  __$$CreateCardClearImplCopyWithImpl(
      _$CreateCardClearImpl _value, $Res Function(_$CreateCardClearImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateCardClearImpl implements CreateCardClear {
  const _$CreateCardClearImpl();

  @override
  String toString() {
    return 'CreateCardEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateCardClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cardId) load,
    required TResult Function(String frontText, String backText, int? deckId)
        save,
    required TResult Function() clear,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cardId)? load,
    TResult? Function(String frontText, String backText, int? deckId)? save,
    TResult? Function()? clear,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cardId)? load,
    TResult Function(String frontText, String backText, int? deckId)? save,
    TResult Function()? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCardLoad value) load,
    required TResult Function(CreateCardSave value) save,
    required TResult Function(CreateCardClear value) clear,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCardLoad value)? load,
    TResult? Function(CreateCardSave value)? save,
    TResult? Function(CreateCardClear value)? clear,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCardLoad value)? load,
    TResult Function(CreateCardSave value)? save,
    TResult Function(CreateCardClear value)? clear,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class CreateCardClear implements CreateCardEvent {
  const factory CreateCardClear() = _$CreateCardClearImpl;
}

/// @nodoc
mixin _$CreateCardState {
  CardModel? get card => throw _privateConstructorUsedError;
  CreateCardSaveStatus get saveStatus => throw _privateConstructorUsedError;
  CreateCardLoadStatus get loadStatus => throw _privateConstructorUsedError;

  /// Create a copy of CreateCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCardStateCopyWith<CreateCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCardStateCopyWith<$Res> {
  factory $CreateCardStateCopyWith(
          CreateCardState value, $Res Function(CreateCardState) then) =
      _$CreateCardStateCopyWithImpl<$Res, CreateCardState>;
  @useResult
  $Res call(
      {CardModel? card,
      CreateCardSaveStatus saveStatus,
      CreateCardLoadStatus loadStatus});

  $CardModelCopyWith<$Res>? get card;
}

/// @nodoc
class _$CreateCardStateCopyWithImpl<$Res, $Val extends CreateCardState>
    implements $CreateCardStateCopyWith<$Res> {
  _$CreateCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = freezed,
    Object? saveStatus = null,
    Object? loadStatus = null,
  }) {
    return _then(_value.copyWith(
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardModel?,
      saveStatus: null == saveStatus
          ? _value.saveStatus
          : saveStatus // ignore: cast_nullable_to_non_nullable
              as CreateCardSaveStatus,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as CreateCardLoadStatus,
    ) as $Val);
  }

  /// Create a copy of CreateCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardModelCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $CardModelCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCardStateImplCopyWith<$Res>
    implements $CreateCardStateCopyWith<$Res> {
  factory _$$CreateCardStateImplCopyWith(_$CreateCardStateImpl value,
          $Res Function(_$CreateCardStateImpl) then) =
      __$$CreateCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CardModel? card,
      CreateCardSaveStatus saveStatus,
      CreateCardLoadStatus loadStatus});

  @override
  $CardModelCopyWith<$Res>? get card;
}

/// @nodoc
class __$$CreateCardStateImplCopyWithImpl<$Res>
    extends _$CreateCardStateCopyWithImpl<$Res, _$CreateCardStateImpl>
    implements _$$CreateCardStateImplCopyWith<$Res> {
  __$$CreateCardStateImplCopyWithImpl(
      _$CreateCardStateImpl _value, $Res Function(_$CreateCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = freezed,
    Object? saveStatus = null,
    Object? loadStatus = null,
  }) {
    return _then(_$CreateCardStateImpl(
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardModel?,
      saveStatus: null == saveStatus
          ? _value.saveStatus
          : saveStatus // ignore: cast_nullable_to_non_nullable
              as CreateCardSaveStatus,
      loadStatus: null == loadStatus
          ? _value.loadStatus
          : loadStatus // ignore: cast_nullable_to_non_nullable
              as CreateCardLoadStatus,
    ));
  }
}

/// @nodoc

class _$CreateCardStateImpl implements _CreateCardState {
  const _$CreateCardStateImpl(
      {this.card,
      this.saveStatus = CreateCardSaveStatus.initial,
      this.loadStatus = CreateCardLoadStatus.initial});

  @override
  final CardModel? card;
  @override
  @JsonKey()
  final CreateCardSaveStatus saveStatus;
  @override
  @JsonKey()
  final CreateCardLoadStatus loadStatus;

  @override
  String toString() {
    return 'CreateCardState(card: $card, saveStatus: $saveStatus, loadStatus: $loadStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCardStateImpl &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.saveStatus, saveStatus) ||
                other.saveStatus == saveStatus) &&
            (identical(other.loadStatus, loadStatus) ||
                other.loadStatus == loadStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card, saveStatus, loadStatus);

  /// Create a copy of CreateCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCardStateImplCopyWith<_$CreateCardStateImpl> get copyWith =>
      __$$CreateCardStateImplCopyWithImpl<_$CreateCardStateImpl>(
          this, _$identity);
}

abstract class _CreateCardState implements CreateCardState {
  const factory _CreateCardState(
      {final CardModel? card,
      final CreateCardSaveStatus saveStatus,
      final CreateCardLoadStatus loadStatus}) = _$CreateCardStateImpl;

  @override
  CardModel? get card;
  @override
  CreateCardSaveStatus get saveStatus;
  @override
  CreateCardLoadStatus get loadStatus;

  /// Create a copy of CreateCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCardStateImplCopyWith<_$CreateCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
