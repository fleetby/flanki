// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DecksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) set,
    required TResult Function(String name) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? set,
    TResult? Function(String name)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? set,
    TResult Function(String name)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecksLoad value) load,
    required TResult Function(DecksSet value) set,
    required TResult Function(DecksCreate value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecksLoad value)? load,
    TResult? Function(DecksSet value)? set,
    TResult? Function(DecksCreate value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecksLoad value)? load,
    TResult Function(DecksSet value)? set,
    TResult Function(DecksCreate value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecksEventCopyWith<$Res> {
  factory $DecksEventCopyWith(
          DecksEvent value, $Res Function(DecksEvent) then) =
      _$DecksEventCopyWithImpl<$Res, DecksEvent>;
}

/// @nodoc
class _$DecksEventCopyWithImpl<$Res, $Val extends DecksEvent>
    implements $DecksEventCopyWith<$Res> {
  _$DecksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DecksLoadImplCopyWith<$Res> {
  factory _$$DecksLoadImplCopyWith(
          _$DecksLoadImpl value, $Res Function(_$DecksLoadImpl) then) =
      __$$DecksLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecksLoadImplCopyWithImpl<$Res>
    extends _$DecksEventCopyWithImpl<$Res, _$DecksLoadImpl>
    implements _$$DecksLoadImplCopyWith<$Res> {
  __$$DecksLoadImplCopyWithImpl(
      _$DecksLoadImpl _value, $Res Function(_$DecksLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DecksLoadImpl implements DecksLoad {
  const _$DecksLoadImpl();

  @override
  String toString() {
    return 'DecksEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecksLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) set,
    required TResult Function(String name) create,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? set,
    TResult? Function(String name)? create,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? set,
    TResult Function(String name)? create,
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
    required TResult Function(DecksLoad value) load,
    required TResult Function(DecksSet value) set,
    required TResult Function(DecksCreate value) create,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecksLoad value)? load,
    TResult? Function(DecksSet value)? set,
    TResult? Function(DecksCreate value)? create,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecksLoad value)? load,
    TResult Function(DecksSet value)? set,
    TResult Function(DecksCreate value)? create,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class DecksLoad implements DecksEvent {
  const factory DecksLoad() = _$DecksLoadImpl;
}

/// @nodoc
abstract class _$$DecksSetImplCopyWith<$Res> {
  factory _$$DecksSetImplCopyWith(
          _$DecksSetImpl value, $Res Function(_$DecksSetImpl) then) =
      __$$DecksSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DeckModel> decks});
}

/// @nodoc
class __$$DecksSetImplCopyWithImpl<$Res>
    extends _$DecksEventCopyWithImpl<$Res, _$DecksSetImpl>
    implements _$$DecksSetImplCopyWith<$Res> {
  __$$DecksSetImplCopyWithImpl(
      _$DecksSetImpl _value, $Res Function(_$DecksSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decks = null,
  }) {
    return _then(_$DecksSetImpl(
      decks: null == decks
          ? _value._decks
          : decks // ignore: cast_nullable_to_non_nullable
              as List<DeckModel>,
    ));
  }
}

/// @nodoc

class _$DecksSetImpl implements DecksSet {
  const _$DecksSetImpl({required final List<DeckModel> decks}) : _decks = decks;

  final List<DeckModel> _decks;
  @override
  List<DeckModel> get decks {
    if (_decks is EqualUnmodifiableListView) return _decks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decks);
  }

  @override
  String toString() {
    return 'DecksEvent.set(decks: $decks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecksSetImpl &&
            const DeepCollectionEquality().equals(other._decks, _decks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_decks));

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecksSetImplCopyWith<_$DecksSetImpl> get copyWith =>
      __$$DecksSetImplCopyWithImpl<_$DecksSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) set,
    required TResult Function(String name) create,
  }) {
    return set(decks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? set,
    TResult? Function(String name)? create,
  }) {
    return set?.call(decks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? set,
    TResult Function(String name)? create,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(decks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecksLoad value) load,
    required TResult Function(DecksSet value) set,
    required TResult Function(DecksCreate value) create,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecksLoad value)? load,
    TResult? Function(DecksSet value)? set,
    TResult? Function(DecksCreate value)? create,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecksLoad value)? load,
    TResult Function(DecksSet value)? set,
    TResult Function(DecksCreate value)? create,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class DecksSet implements DecksEvent {
  const factory DecksSet({required final List<DeckModel> decks}) =
      _$DecksSetImpl;

  List<DeckModel> get decks;

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecksSetImplCopyWith<_$DecksSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecksCreateImplCopyWith<$Res> {
  factory _$$DecksCreateImplCopyWith(
          _$DecksCreateImpl value, $Res Function(_$DecksCreateImpl) then) =
      __$$DecksCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$DecksCreateImplCopyWithImpl<$Res>
    extends _$DecksEventCopyWithImpl<$Res, _$DecksCreateImpl>
    implements _$$DecksCreateImplCopyWith<$Res> {
  __$$DecksCreateImplCopyWithImpl(
      _$DecksCreateImpl _value, $Res Function(_$DecksCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$DecksCreateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DecksCreateImpl implements DecksCreate {
  const _$DecksCreateImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'DecksEvent.create(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecksCreateImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecksCreateImplCopyWith<_$DecksCreateImpl> get copyWith =>
      __$$DecksCreateImplCopyWithImpl<_$DecksCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(List<DeckModel> decks) set,
    required TResult Function(String name) create,
  }) {
    return create(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(List<DeckModel> decks)? set,
    TResult? Function(String name)? create,
  }) {
    return create?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(List<DeckModel> decks)? set,
    TResult Function(String name)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DecksLoad value) load,
    required TResult Function(DecksSet value) set,
    required TResult Function(DecksCreate value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DecksLoad value)? load,
    TResult? Function(DecksSet value)? set,
    TResult? Function(DecksCreate value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DecksLoad value)? load,
    TResult Function(DecksSet value)? set,
    TResult Function(DecksCreate value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class DecksCreate implements DecksEvent {
  const factory DecksCreate({required final String name}) = _$DecksCreateImpl;

  String get name;

  /// Create a copy of DecksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecksCreateImplCopyWith<_$DecksCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DecksState {
  List<DeckModel> get decks => throw _privateConstructorUsedError;
  (Object, StackTrace)? get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Create a copy of DecksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecksStateCopyWith<DecksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecksStateCopyWith<$Res> {
  factory $DecksStateCopyWith(
          DecksState value, $Res Function(DecksState) then) =
      _$DecksStateCopyWithImpl<$Res, DecksState>;
  @useResult
  $Res call({List<DeckModel> decks, (Object, StackTrace)? error, bool loading});
}

/// @nodoc
class _$DecksStateCopyWithImpl<$Res, $Val extends DecksState>
    implements $DecksStateCopyWith<$Res> {
  _$DecksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decks = null,
    Object? error = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      decks: null == decks
          ? _value.decks
          : decks // ignore: cast_nullable_to_non_nullable
              as List<DeckModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecksStateImplCopyWith<$Res>
    implements $DecksStateCopyWith<$Res> {
  factory _$$DecksStateImplCopyWith(
          _$DecksStateImpl value, $Res Function(_$DecksStateImpl) then) =
      __$$DecksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DeckModel> decks, (Object, StackTrace)? error, bool loading});
}

/// @nodoc
class __$$DecksStateImplCopyWithImpl<$Res>
    extends _$DecksStateCopyWithImpl<$Res, _$DecksStateImpl>
    implements _$$DecksStateImplCopyWith<$Res> {
  __$$DecksStateImplCopyWithImpl(
      _$DecksStateImpl _value, $Res Function(_$DecksStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decks = null,
    Object? error = freezed,
    Object? loading = null,
  }) {
    return _then(_$DecksStateImpl(
      decks: null == decks
          ? _value._decks
          : decks // ignore: cast_nullable_to_non_nullable
              as List<DeckModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as (Object, StackTrace)?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DecksStateImpl implements _DecksState {
  const _$DecksStateImpl(
      {final List<DeckModel> decks = const [],
      this.error,
      this.loading = false})
      : _decks = decks;

  final List<DeckModel> _decks;
  @override
  @JsonKey()
  List<DeckModel> get decks {
    if (_decks is EqualUnmodifiableListView) return _decks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_decks);
  }

  @override
  final (Object, StackTrace)? error;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'DecksState(decks: $decks, error: $error, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecksStateImpl &&
            const DeepCollectionEquality().equals(other._decks, _decks) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_decks), error, loading);

  /// Create a copy of DecksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecksStateImplCopyWith<_$DecksStateImpl> get copyWith =>
      __$$DecksStateImplCopyWithImpl<_$DecksStateImpl>(this, _$identity);
}

abstract class _DecksState implements DecksState {
  const factory _DecksState(
      {final List<DeckModel> decks,
      final (Object, StackTrace)? error,
      final bool loading}) = _$DecksStateImpl;

  @override
  List<DeckModel> get decks;
  @override
  (Object, StackTrace)? get error;
  @override
  bool get loading;

  /// Create a copy of DecksState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecksStateImplCopyWith<_$DecksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
