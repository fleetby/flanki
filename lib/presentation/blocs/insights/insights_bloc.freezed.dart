// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insights_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InsightsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) setDecks,
    required TResult Function(DeckModel? deck) setSelectedDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? setDecks,
    TResult? Function(DeckModel? deck)? setSelectedDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? setDecks,
    TResult Function(DeckModel? deck)? setSelectedDeck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsLoad value) load,
    required TResult Function(InsightsSetDecks value) setDecks,
    required TResult Function(InsightsSetSelectedDeck value) setSelectedDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsLoad value)? load,
    TResult? Function(InsightsSetDecks value)? setDecks,
    TResult? Function(InsightsSetSelectedDeck value)? setSelectedDeck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsLoad value)? load,
    TResult Function(InsightsSetDecks value)? setDecks,
    TResult Function(InsightsSetSelectedDeck value)? setSelectedDeck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightsEventCopyWith<$Res> {
  factory $InsightsEventCopyWith(
          InsightsEvent value, $Res Function(InsightsEvent) then) =
      _$InsightsEventCopyWithImpl<$Res, InsightsEvent>;
}

/// @nodoc
class _$InsightsEventCopyWithImpl<$Res, $Val extends InsightsEvent>
    implements $InsightsEventCopyWith<$Res> {
  _$InsightsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InsightsLoadImplCopyWith<$Res> {
  factory _$$InsightsLoadImplCopyWith(
          _$InsightsLoadImpl value, $Res Function(_$InsightsLoadImpl) then) =
      __$$InsightsLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsightsLoadImplCopyWithImpl<$Res>
    extends _$InsightsEventCopyWithImpl<$Res, _$InsightsLoadImpl>
    implements _$$InsightsLoadImplCopyWith<$Res> {
  __$$InsightsLoadImplCopyWithImpl(
      _$InsightsLoadImpl _value, $Res Function(_$InsightsLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InsightsLoadImpl implements InsightsLoad {
  const _$InsightsLoadImpl();

  @override
  String toString() {
    return 'InsightsEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InsightsLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) setDecks,
    required TResult Function(DeckModel? deck) setSelectedDeck,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? setDecks,
    TResult? Function(DeckModel? deck)? setSelectedDeck,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? setDecks,
    TResult Function(DeckModel? deck)? setSelectedDeck,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsLoad value) load,
    required TResult Function(InsightsSetDecks value) setDecks,
    required TResult Function(InsightsSetSelectedDeck value) setSelectedDeck,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsLoad value)? load,
    TResult? Function(InsightsSetDecks value)? setDecks,
    TResult? Function(InsightsSetSelectedDeck value)? setSelectedDeck,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsLoad value)? load,
    TResult Function(InsightsSetDecks value)? setDecks,
    TResult Function(InsightsSetSelectedDeck value)? setSelectedDeck,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class InsightsLoad implements InsightsEvent {
  const factory InsightsLoad() = _$InsightsLoadImpl;
}

/// @nodoc
abstract class _$$InsightsSetDecksImplCopyWith<$Res> {
  factory _$$InsightsSetDecksImplCopyWith(_$InsightsSetDecksImpl value,
          $Res Function(_$InsightsSetDecksImpl) then) =
      __$$InsightsSetDecksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DeckModel> decks});
}

/// @nodoc
class __$$InsightsSetDecksImplCopyWithImpl<$Res>
    extends _$InsightsEventCopyWithImpl<$Res, _$InsightsSetDecksImpl>
    implements _$$InsightsSetDecksImplCopyWith<$Res> {
  __$$InsightsSetDecksImplCopyWithImpl(_$InsightsSetDecksImpl _value,
      $Res Function(_$InsightsSetDecksImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decks = null,
  }) {
    return _then(_$InsightsSetDecksImpl(
      decks: null == decks
          ? _value._decks
          : decks // ignore: cast_nullable_to_non_nullable
              as List<DeckModel>,
    ));
  }
}

/// @nodoc

class _$InsightsSetDecksImpl implements InsightsSetDecks {
  const _$InsightsSetDecksImpl({required final List<DeckModel> decks})
      : _decks = decks;

  final List<DeckModel> _decks;
  @override
  List<DeckModel> get decks {
    if (_decks is EqualUnmodifiableListView) return _decks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decks);
  }

  @override
  String toString() {
    return 'InsightsEvent.setDecks(decks: $decks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightsSetDecksImpl &&
            const DeepCollectionEquality().equals(other._decks, _decks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_decks));

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightsSetDecksImplCopyWith<_$InsightsSetDecksImpl> get copyWith =>
      __$$InsightsSetDecksImplCopyWithImpl<_$InsightsSetDecksImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) setDecks,
    required TResult Function(DeckModel? deck) setSelectedDeck,
  }) {
    return setDecks(decks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? setDecks,
    TResult? Function(DeckModel? deck)? setSelectedDeck,
  }) {
    return setDecks?.call(decks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? setDecks,
    TResult Function(DeckModel? deck)? setSelectedDeck,
    required TResult orElse(),
  }) {
    if (setDecks != null) {
      return setDecks(decks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsLoad value) load,
    required TResult Function(InsightsSetDecks value) setDecks,
    required TResult Function(InsightsSetSelectedDeck value) setSelectedDeck,
  }) {
    return setDecks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsLoad value)? load,
    TResult? Function(InsightsSetDecks value)? setDecks,
    TResult? Function(InsightsSetSelectedDeck value)? setSelectedDeck,
  }) {
    return setDecks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsLoad value)? load,
    TResult Function(InsightsSetDecks value)? setDecks,
    TResult Function(InsightsSetSelectedDeck value)? setSelectedDeck,
    required TResult orElse(),
  }) {
    if (setDecks != null) {
      return setDecks(this);
    }
    return orElse();
  }
}

abstract class InsightsSetDecks implements InsightsEvent {
  const factory InsightsSetDecks({required final List<DeckModel> decks}) =
      _$InsightsSetDecksImpl;

  List<DeckModel> get decks;

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightsSetDecksImplCopyWith<_$InsightsSetDecksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsightsSetSelectedDeckImplCopyWith<$Res> {
  factory _$$InsightsSetSelectedDeckImplCopyWith(
          _$InsightsSetSelectedDeckImpl value,
          $Res Function(_$InsightsSetSelectedDeckImpl) then) =
      __$$InsightsSetSelectedDeckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeckModel? deck});

  $DeckModelCopyWith<$Res>? get deck;
}

/// @nodoc
class __$$InsightsSetSelectedDeckImplCopyWithImpl<$Res>
    extends _$InsightsEventCopyWithImpl<$Res, _$InsightsSetSelectedDeckImpl>
    implements _$$InsightsSetSelectedDeckImplCopyWith<$Res> {
  __$$InsightsSetSelectedDeckImplCopyWithImpl(
      _$InsightsSetSelectedDeckImpl _value,
      $Res Function(_$InsightsSetSelectedDeckImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deck = freezed,
  }) {
    return _then(_$InsightsSetSelectedDeckImpl(
      deck: freezed == deck
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as DeckModel?,
    ));
  }

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeckModelCopyWith<$Res>? get deck {
    if (_value.deck == null) {
      return null;
    }

    return $DeckModelCopyWith<$Res>(_value.deck!, (value) {
      return _then(_value.copyWith(deck: value));
    });
  }
}

/// @nodoc

class _$InsightsSetSelectedDeckImpl implements InsightsSetSelectedDeck {
  const _$InsightsSetSelectedDeckImpl({required this.deck});

  @override
  final DeckModel? deck;

  @override
  String toString() {
    return 'InsightsEvent.setSelectedDeck(deck: $deck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightsSetSelectedDeckImpl &&
            (identical(other.deck, deck) || other.deck == deck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deck);

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightsSetSelectedDeckImplCopyWith<_$InsightsSetSelectedDeckImpl>
      get copyWith => __$$InsightsSetSelectedDeckImplCopyWithImpl<
          _$InsightsSetSelectedDeckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) setDecks,
    required TResult Function(DeckModel? deck) setSelectedDeck,
  }) {
    return setSelectedDeck(deck);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? setDecks,
    TResult? Function(DeckModel? deck)? setSelectedDeck,
  }) {
    return setSelectedDeck?.call(deck);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? setDecks,
    TResult Function(DeckModel? deck)? setSelectedDeck,
    required TResult orElse(),
  }) {
    if (setSelectedDeck != null) {
      return setSelectedDeck(deck);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsLoad value) load,
    required TResult Function(InsightsSetDecks value) setDecks,
    required TResult Function(InsightsSetSelectedDeck value) setSelectedDeck,
  }) {
    return setSelectedDeck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsLoad value)? load,
    TResult? Function(InsightsSetDecks value)? setDecks,
    TResult? Function(InsightsSetSelectedDeck value)? setSelectedDeck,
  }) {
    return setSelectedDeck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsLoad value)? load,
    TResult Function(InsightsSetDecks value)? setDecks,
    TResult Function(InsightsSetSelectedDeck value)? setSelectedDeck,
    required TResult orElse(),
  }) {
    if (setSelectedDeck != null) {
      return setSelectedDeck(this);
    }
    return orElse();
  }
}

abstract class InsightsSetSelectedDeck implements InsightsEvent {
  const factory InsightsSetSelectedDeck({required final DeckModel? deck}) =
      _$InsightsSetSelectedDeckImpl;

  DeckModel? get deck;

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightsSetSelectedDeckImplCopyWith<_$InsightsSetSelectedDeckImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InsightsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)
        loaded,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsInitial value) initial,
    required TResult Function(InsightsLoading value) loading,
    required TResult Function(InsightsLoaded value) loaded,
    required TResult Function(InsightsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsInitial value)? initial,
    TResult? Function(InsightsLoading value)? loading,
    TResult? Function(InsightsLoaded value)? loaded,
    TResult? Function(InsightsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsInitial value)? initial,
    TResult Function(InsightsLoading value)? loading,
    TResult Function(InsightsLoaded value)? loaded,
    TResult Function(InsightsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightsStateCopyWith<$Res> {
  factory $InsightsStateCopyWith(
          InsightsState value, $Res Function(InsightsState) then) =
      _$InsightsStateCopyWithImpl<$Res, InsightsState>;
}

/// @nodoc
class _$InsightsStateCopyWithImpl<$Res, $Val extends InsightsState>
    implements $InsightsStateCopyWith<$Res> {
  _$InsightsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InsightsInitialImplCopyWith<$Res> {
  factory _$$InsightsInitialImplCopyWith(_$InsightsInitialImpl value,
          $Res Function(_$InsightsInitialImpl) then) =
      __$$InsightsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsightsInitialImplCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res, _$InsightsInitialImpl>
    implements _$$InsightsInitialImplCopyWith<$Res> {
  __$$InsightsInitialImplCopyWithImpl(
      _$InsightsInitialImpl _value, $Res Function(_$InsightsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InsightsInitialImpl implements InsightsInitial {
  const _$InsightsInitialImpl();

  @override
  String toString() {
    return 'InsightsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InsightsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)
        loaded,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsInitial value) initial,
    required TResult Function(InsightsLoading value) loading,
    required TResult Function(InsightsLoaded value) loaded,
    required TResult Function(InsightsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsInitial value)? initial,
    TResult? Function(InsightsLoading value)? loading,
    TResult? Function(InsightsLoaded value)? loaded,
    TResult? Function(InsightsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsInitial value)? initial,
    TResult Function(InsightsLoading value)? loading,
    TResult Function(InsightsLoaded value)? loaded,
    TResult Function(InsightsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InsightsInitial implements InsightsState {
  const factory InsightsInitial() = _$InsightsInitialImpl;
}

/// @nodoc
abstract class _$$InsightsLoadingImplCopyWith<$Res> {
  factory _$$InsightsLoadingImplCopyWith(_$InsightsLoadingImpl value,
          $Res Function(_$InsightsLoadingImpl) then) =
      __$$InsightsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InsightsLoadingImplCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res, _$InsightsLoadingImpl>
    implements _$$InsightsLoadingImplCopyWith<$Res> {
  __$$InsightsLoadingImplCopyWithImpl(
      _$InsightsLoadingImpl _value, $Res Function(_$InsightsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InsightsLoadingImpl implements InsightsLoading {
  const _$InsightsLoadingImpl();

  @override
  String toString() {
    return 'InsightsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InsightsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)
        loaded,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsInitial value) initial,
    required TResult Function(InsightsLoading value) loading,
    required TResult Function(InsightsLoaded value) loaded,
    required TResult Function(InsightsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsInitial value)? initial,
    TResult? Function(InsightsLoading value)? loading,
    TResult? Function(InsightsLoaded value)? loaded,
    TResult? Function(InsightsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsInitial value)? initial,
    TResult Function(InsightsLoading value)? loading,
    TResult Function(InsightsLoaded value)? loaded,
    TResult Function(InsightsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InsightsLoading implements InsightsState {
  const factory InsightsLoading() = _$InsightsLoadingImpl;
}

/// @nodoc
abstract class _$$InsightsLoadedImplCopyWith<$Res> {
  factory _$$InsightsLoadedImplCopyWith(_$InsightsLoadedImpl value,
          $Res Function(_$InsightsLoadedImpl) then) =
      __$$InsightsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DeckModel> decks, DeckModel? selectedDeck});

  $DeckModelCopyWith<$Res>? get selectedDeck;
}

/// @nodoc
class __$$InsightsLoadedImplCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res, _$InsightsLoadedImpl>
    implements _$$InsightsLoadedImplCopyWith<$Res> {
  __$$InsightsLoadedImplCopyWithImpl(
      _$InsightsLoadedImpl _value, $Res Function(_$InsightsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decks = null,
    Object? selectedDeck = freezed,
  }) {
    return _then(_$InsightsLoadedImpl(
      decks: null == decks
          ? _value._decks
          : decks // ignore: cast_nullable_to_non_nullable
              as List<DeckModel>,
      selectedDeck: freezed == selectedDeck
          ? _value.selectedDeck
          : selectedDeck // ignore: cast_nullable_to_non_nullable
              as DeckModel?,
    ));
  }

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeckModelCopyWith<$Res>? get selectedDeck {
    if (_value.selectedDeck == null) {
      return null;
    }

    return $DeckModelCopyWith<$Res>(_value.selectedDeck!, (value) {
      return _then(_value.copyWith(selectedDeck: value));
    });
  }
}

/// @nodoc

class _$InsightsLoadedImpl implements InsightsLoaded {
  const _$InsightsLoadedImpl(
      {required final List<DeckModel> decks, this.selectedDeck})
      : _decks = decks;

  final List<DeckModel> _decks;
  @override
  List<DeckModel> get decks {
    if (_decks is EqualUnmodifiableListView) return _decks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decks);
  }

  @override
  final DeckModel? selectedDeck;

  @override
  String toString() {
    return 'InsightsState.loaded(decks: $decks, selectedDeck: $selectedDeck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightsLoadedImpl &&
            const DeepCollectionEquality().equals(other._decks, _decks) &&
            (identical(other.selectedDeck, selectedDeck) ||
                other.selectedDeck == selectedDeck));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_decks), selectedDeck);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightsLoadedImplCopyWith<_$InsightsLoadedImpl> get copyWith =>
      __$$InsightsLoadedImplCopyWithImpl<_$InsightsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)
        loaded,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return loaded(decks, selectedDeck);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return loaded?.call(decks, selectedDeck);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(decks, selectedDeck);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsInitial value) initial,
    required TResult Function(InsightsLoading value) loading,
    required TResult Function(InsightsLoaded value) loaded,
    required TResult Function(InsightsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsInitial value)? initial,
    TResult? Function(InsightsLoading value)? loading,
    TResult? Function(InsightsLoaded value)? loaded,
    TResult? Function(InsightsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsInitial value)? initial,
    TResult Function(InsightsLoading value)? loading,
    TResult Function(InsightsLoaded value)? loaded,
    TResult Function(InsightsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class InsightsLoaded implements InsightsState {
  const factory InsightsLoaded(
      {required final List<DeckModel> decks,
      final DeckModel? selectedDeck}) = _$InsightsLoadedImpl;

  List<DeckModel> get decks;
  DeckModel? get selectedDeck;

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightsLoadedImplCopyWith<_$InsightsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InsightsErrorImplCopyWith<$Res> {
  factory _$$InsightsErrorImplCopyWith(
          _$InsightsErrorImpl value, $Res Function(_$InsightsErrorImpl) then) =
      __$$InsightsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$InsightsErrorImplCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res, _$InsightsErrorImpl>
    implements _$$InsightsErrorImplCopyWith<$Res> {
  __$$InsightsErrorImplCopyWithImpl(
      _$InsightsErrorImpl _value, $Res Function(_$InsightsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InsightsErrorImpl(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$InsightsErrorImpl implements InsightsError {
  const _$InsightsErrorImpl({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InsightsState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsightsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InsightsErrorImplCopyWith<_$InsightsErrorImpl> get copyWith =>
      __$$InsightsErrorImplCopyWithImpl<_$InsightsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)
        loaded,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DeckModel> decks, DeckModel? selectedDeck)? loaded,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsightsInitial value) initial,
    required TResult Function(InsightsLoading value) loading,
    required TResult Function(InsightsLoaded value) loaded,
    required TResult Function(InsightsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsightsInitial value)? initial,
    TResult? Function(InsightsLoading value)? loading,
    TResult? Function(InsightsLoaded value)? loaded,
    TResult? Function(InsightsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsightsInitial value)? initial,
    TResult Function(InsightsLoading value)? loading,
    TResult Function(InsightsLoaded value)? loaded,
    TResult Function(InsightsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InsightsError implements InsightsState {
  const factory InsightsError(
      {required final Object error,
      required final StackTrace stackTrace}) = _$InsightsErrorImpl;

  Object get error;
  StackTrace get stackTrace;

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InsightsErrorImplCopyWith<_$InsightsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
