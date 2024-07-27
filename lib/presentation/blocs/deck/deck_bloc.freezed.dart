// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deck_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function(DeckModel? deck) set,
    required TResult Function(String name) edit,
    required TResult Function() delete,
    required TResult Function() resetScheduling,
    required TResult Function(bool shuffleCards) setShuffleCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function(DeckModel? deck)? set,
    TResult? Function(String name)? edit,
    TResult? Function()? delete,
    TResult? Function()? resetScheduling,
    TResult? Function(bool shuffleCards)? setShuffleCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function(DeckModel? deck)? set,
    TResult Function(String name)? edit,
    TResult Function()? delete,
    TResult Function()? resetScheduling,
    TResult Function(bool shuffleCards)? setShuffleCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckLoad value) load,
    required TResult Function(DeckSet value) set,
    required TResult Function(DeckEdit value) edit,
    required TResult Function(DeckDelete value) delete,
    required TResult Function(DeckResetScheduling value) resetScheduling,
    required TResult Function(DeckSetShuffleCards value) setShuffleCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckLoad value)? load,
    TResult? Function(DeckSet value)? set,
    TResult? Function(DeckEdit value)? edit,
    TResult? Function(DeckDelete value)? delete,
    TResult? Function(DeckResetScheduling value)? resetScheduling,
    TResult? Function(DeckSetShuffleCards value)? setShuffleCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckLoad value)? load,
    TResult Function(DeckSet value)? set,
    TResult Function(DeckEdit value)? edit,
    TResult Function(DeckDelete value)? delete,
    TResult Function(DeckResetScheduling value)? resetScheduling,
    TResult Function(DeckSetShuffleCards value)? setShuffleCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeckEventCopyWith<$Res> {
  factory $DeckEventCopyWith(DeckEvent value, $Res Function(DeckEvent) then) =
      _$DeckEventCopyWithImpl<$Res, DeckEvent>;
}

/// @nodoc
class _$DeckEventCopyWithImpl<$Res, $Val extends DeckEvent>
    implements $DeckEventCopyWith<$Res> {
  _$DeckEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeckLoadImplCopyWith<$Res> {
  factory _$$DeckLoadImplCopyWith(
          _$DeckLoadImpl value, $Res Function(_$DeckLoadImpl) then) =
      __$$DeckLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeckLoadImplCopyWithImpl<$Res>
    extends _$DeckEventCopyWithImpl<$Res, _$DeckLoadImpl>
    implements _$$DeckLoadImplCopyWith<$Res> {
  __$$DeckLoadImplCopyWithImpl(
      _$DeckLoadImpl _value, $Res Function(_$DeckLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeckLoadImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeckLoadImpl implements DeckLoad {
  const _$DeckLoadImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DeckEvent.load(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeckLoadImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeckLoadImplCopyWith<_$DeckLoadImpl> get copyWith =>
      __$$DeckLoadImplCopyWithImpl<_$DeckLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function(DeckModel? deck) set,
    required TResult Function(String name) edit,
    required TResult Function() delete,
    required TResult Function() resetScheduling,
    required TResult Function(bool shuffleCards) setShuffleCards,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function(DeckModel? deck)? set,
    TResult? Function(String name)? edit,
    TResult? Function()? delete,
    TResult? Function()? resetScheduling,
    TResult? Function(bool shuffleCards)? setShuffleCards,
  }) {
    return load?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function(DeckModel? deck)? set,
    TResult Function(String name)? edit,
    TResult Function()? delete,
    TResult Function()? resetScheduling,
    TResult Function(bool shuffleCards)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckLoad value) load,
    required TResult Function(DeckSet value) set,
    required TResult Function(DeckEdit value) edit,
    required TResult Function(DeckDelete value) delete,
    required TResult Function(DeckResetScheduling value) resetScheduling,
    required TResult Function(DeckSetShuffleCards value) setShuffleCards,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckLoad value)? load,
    TResult? Function(DeckSet value)? set,
    TResult? Function(DeckEdit value)? edit,
    TResult? Function(DeckDelete value)? delete,
    TResult? Function(DeckResetScheduling value)? resetScheduling,
    TResult? Function(DeckSetShuffleCards value)? setShuffleCards,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckLoad value)? load,
    TResult Function(DeckSet value)? set,
    TResult Function(DeckEdit value)? edit,
    TResult Function(DeckDelete value)? delete,
    TResult Function(DeckResetScheduling value)? resetScheduling,
    TResult Function(DeckSetShuffleCards value)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class DeckLoad implements DeckEvent {
  const factory DeckLoad({required final int id}) = _$DeckLoadImpl;

  int get id;

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeckLoadImplCopyWith<_$DeckLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeckSetImplCopyWith<$Res> {
  factory _$$DeckSetImplCopyWith(
          _$DeckSetImpl value, $Res Function(_$DeckSetImpl) then) =
      __$$DeckSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeckModel? deck});

  $DeckModelCopyWith<$Res>? get deck;
}

/// @nodoc
class __$$DeckSetImplCopyWithImpl<$Res>
    extends _$DeckEventCopyWithImpl<$Res, _$DeckSetImpl>
    implements _$$DeckSetImplCopyWith<$Res> {
  __$$DeckSetImplCopyWithImpl(
      _$DeckSetImpl _value, $Res Function(_$DeckSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deck = freezed,
  }) {
    return _then(_$DeckSetImpl(
      deck: freezed == deck
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as DeckModel?,
    ));
  }

  /// Create a copy of DeckEvent
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

class _$DeckSetImpl implements DeckSet {
  const _$DeckSetImpl({required this.deck});

  @override
  final DeckModel? deck;

  @override
  String toString() {
    return 'DeckEvent.set(deck: $deck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeckSetImpl &&
            (identical(other.deck, deck) || other.deck == deck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deck);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeckSetImplCopyWith<_$DeckSetImpl> get copyWith =>
      __$$DeckSetImplCopyWithImpl<_$DeckSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function(DeckModel? deck) set,
    required TResult Function(String name) edit,
    required TResult Function() delete,
    required TResult Function() resetScheduling,
    required TResult Function(bool shuffleCards) setShuffleCards,
  }) {
    return set(deck);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function(DeckModel? deck)? set,
    TResult? Function(String name)? edit,
    TResult? Function()? delete,
    TResult? Function()? resetScheduling,
    TResult? Function(bool shuffleCards)? setShuffleCards,
  }) {
    return set?.call(deck);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function(DeckModel? deck)? set,
    TResult Function(String name)? edit,
    TResult Function()? delete,
    TResult Function()? resetScheduling,
    TResult Function(bool shuffleCards)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(deck);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckLoad value) load,
    required TResult Function(DeckSet value) set,
    required TResult Function(DeckEdit value) edit,
    required TResult Function(DeckDelete value) delete,
    required TResult Function(DeckResetScheduling value) resetScheduling,
    required TResult Function(DeckSetShuffleCards value) setShuffleCards,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckLoad value)? load,
    TResult? Function(DeckSet value)? set,
    TResult? Function(DeckEdit value)? edit,
    TResult? Function(DeckDelete value)? delete,
    TResult? Function(DeckResetScheduling value)? resetScheduling,
    TResult? Function(DeckSetShuffleCards value)? setShuffleCards,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckLoad value)? load,
    TResult Function(DeckSet value)? set,
    TResult Function(DeckEdit value)? edit,
    TResult Function(DeckDelete value)? delete,
    TResult Function(DeckResetScheduling value)? resetScheduling,
    TResult Function(DeckSetShuffleCards value)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class DeckSet implements DeckEvent {
  const factory DeckSet({required final DeckModel? deck}) = _$DeckSetImpl;

  DeckModel? get deck;

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeckSetImplCopyWith<_$DeckSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeckEditImplCopyWith<$Res> {
  factory _$$DeckEditImplCopyWith(
          _$DeckEditImpl value, $Res Function(_$DeckEditImpl) then) =
      __$$DeckEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$DeckEditImplCopyWithImpl<$Res>
    extends _$DeckEventCopyWithImpl<$Res, _$DeckEditImpl>
    implements _$$DeckEditImplCopyWith<$Res> {
  __$$DeckEditImplCopyWithImpl(
      _$DeckEditImpl _value, $Res Function(_$DeckEditImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$DeckEditImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeckEditImpl implements DeckEdit {
  const _$DeckEditImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'DeckEvent.edit(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeckEditImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeckEditImplCopyWith<_$DeckEditImpl> get copyWith =>
      __$$DeckEditImplCopyWithImpl<_$DeckEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function(DeckModel? deck) set,
    required TResult Function(String name) edit,
    required TResult Function() delete,
    required TResult Function() resetScheduling,
    required TResult Function(bool shuffleCards) setShuffleCards,
  }) {
    return edit(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function(DeckModel? deck)? set,
    TResult? Function(String name)? edit,
    TResult? Function()? delete,
    TResult? Function()? resetScheduling,
    TResult? Function(bool shuffleCards)? setShuffleCards,
  }) {
    return edit?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function(DeckModel? deck)? set,
    TResult Function(String name)? edit,
    TResult Function()? delete,
    TResult Function()? resetScheduling,
    TResult Function(bool shuffleCards)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckLoad value) load,
    required TResult Function(DeckSet value) set,
    required TResult Function(DeckEdit value) edit,
    required TResult Function(DeckDelete value) delete,
    required TResult Function(DeckResetScheduling value) resetScheduling,
    required TResult Function(DeckSetShuffleCards value) setShuffleCards,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckLoad value)? load,
    TResult? Function(DeckSet value)? set,
    TResult? Function(DeckEdit value)? edit,
    TResult? Function(DeckDelete value)? delete,
    TResult? Function(DeckResetScheduling value)? resetScheduling,
    TResult? Function(DeckSetShuffleCards value)? setShuffleCards,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckLoad value)? load,
    TResult Function(DeckSet value)? set,
    TResult Function(DeckEdit value)? edit,
    TResult Function(DeckDelete value)? delete,
    TResult Function(DeckResetScheduling value)? resetScheduling,
    TResult Function(DeckSetShuffleCards value)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class DeckEdit implements DeckEvent {
  const factory DeckEdit({required final String name}) = _$DeckEditImpl;

  String get name;

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeckEditImplCopyWith<_$DeckEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeckDeleteImplCopyWith<$Res> {
  factory _$$DeckDeleteImplCopyWith(
          _$DeckDeleteImpl value, $Res Function(_$DeckDeleteImpl) then) =
      __$$DeckDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeckDeleteImplCopyWithImpl<$Res>
    extends _$DeckEventCopyWithImpl<$Res, _$DeckDeleteImpl>
    implements _$$DeckDeleteImplCopyWith<$Res> {
  __$$DeckDeleteImplCopyWithImpl(
      _$DeckDeleteImpl _value, $Res Function(_$DeckDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeckDeleteImpl implements DeckDelete {
  const _$DeckDeleteImpl();

  @override
  String toString() {
    return 'DeckEvent.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeckDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function(DeckModel? deck) set,
    required TResult Function(String name) edit,
    required TResult Function() delete,
    required TResult Function() resetScheduling,
    required TResult Function(bool shuffleCards) setShuffleCards,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function(DeckModel? deck)? set,
    TResult? Function(String name)? edit,
    TResult? Function()? delete,
    TResult? Function()? resetScheduling,
    TResult? Function(bool shuffleCards)? setShuffleCards,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function(DeckModel? deck)? set,
    TResult Function(String name)? edit,
    TResult Function()? delete,
    TResult Function()? resetScheduling,
    TResult Function(bool shuffleCards)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckLoad value) load,
    required TResult Function(DeckSet value) set,
    required TResult Function(DeckEdit value) edit,
    required TResult Function(DeckDelete value) delete,
    required TResult Function(DeckResetScheduling value) resetScheduling,
    required TResult Function(DeckSetShuffleCards value) setShuffleCards,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckLoad value)? load,
    TResult? Function(DeckSet value)? set,
    TResult? Function(DeckEdit value)? edit,
    TResult? Function(DeckDelete value)? delete,
    TResult? Function(DeckResetScheduling value)? resetScheduling,
    TResult? Function(DeckSetShuffleCards value)? setShuffleCards,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckLoad value)? load,
    TResult Function(DeckSet value)? set,
    TResult Function(DeckEdit value)? edit,
    TResult Function(DeckDelete value)? delete,
    TResult Function(DeckResetScheduling value)? resetScheduling,
    TResult Function(DeckSetShuffleCards value)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeckDelete implements DeckEvent {
  const factory DeckDelete() = _$DeckDeleteImpl;
}

/// @nodoc
abstract class _$$DeckResetSchedulingImplCopyWith<$Res> {
  factory _$$DeckResetSchedulingImplCopyWith(_$DeckResetSchedulingImpl value,
          $Res Function(_$DeckResetSchedulingImpl) then) =
      __$$DeckResetSchedulingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeckResetSchedulingImplCopyWithImpl<$Res>
    extends _$DeckEventCopyWithImpl<$Res, _$DeckResetSchedulingImpl>
    implements _$$DeckResetSchedulingImplCopyWith<$Res> {
  __$$DeckResetSchedulingImplCopyWithImpl(_$DeckResetSchedulingImpl _value,
      $Res Function(_$DeckResetSchedulingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeckResetSchedulingImpl implements DeckResetScheduling {
  const _$DeckResetSchedulingImpl();

  @override
  String toString() {
    return 'DeckEvent.resetScheduling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeckResetSchedulingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function(DeckModel? deck) set,
    required TResult Function(String name) edit,
    required TResult Function() delete,
    required TResult Function() resetScheduling,
    required TResult Function(bool shuffleCards) setShuffleCards,
  }) {
    return resetScheduling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function(DeckModel? deck)? set,
    TResult? Function(String name)? edit,
    TResult? Function()? delete,
    TResult? Function()? resetScheduling,
    TResult? Function(bool shuffleCards)? setShuffleCards,
  }) {
    return resetScheduling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function(DeckModel? deck)? set,
    TResult Function(String name)? edit,
    TResult Function()? delete,
    TResult Function()? resetScheduling,
    TResult Function(bool shuffleCards)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (resetScheduling != null) {
      return resetScheduling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckLoad value) load,
    required TResult Function(DeckSet value) set,
    required TResult Function(DeckEdit value) edit,
    required TResult Function(DeckDelete value) delete,
    required TResult Function(DeckResetScheduling value) resetScheduling,
    required TResult Function(DeckSetShuffleCards value) setShuffleCards,
  }) {
    return resetScheduling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckLoad value)? load,
    TResult? Function(DeckSet value)? set,
    TResult? Function(DeckEdit value)? edit,
    TResult? Function(DeckDelete value)? delete,
    TResult? Function(DeckResetScheduling value)? resetScheduling,
    TResult? Function(DeckSetShuffleCards value)? setShuffleCards,
  }) {
    return resetScheduling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckLoad value)? load,
    TResult Function(DeckSet value)? set,
    TResult Function(DeckEdit value)? edit,
    TResult Function(DeckDelete value)? delete,
    TResult Function(DeckResetScheduling value)? resetScheduling,
    TResult Function(DeckSetShuffleCards value)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (resetScheduling != null) {
      return resetScheduling(this);
    }
    return orElse();
  }
}

abstract class DeckResetScheduling implements DeckEvent {
  const factory DeckResetScheduling() = _$DeckResetSchedulingImpl;
}

/// @nodoc
abstract class _$$DeckSetShuffleCardsImplCopyWith<$Res> {
  factory _$$DeckSetShuffleCardsImplCopyWith(_$DeckSetShuffleCardsImpl value,
          $Res Function(_$DeckSetShuffleCardsImpl) then) =
      __$$DeckSetShuffleCardsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool shuffleCards});
}

/// @nodoc
class __$$DeckSetShuffleCardsImplCopyWithImpl<$Res>
    extends _$DeckEventCopyWithImpl<$Res, _$DeckSetShuffleCardsImpl>
    implements _$$DeckSetShuffleCardsImplCopyWith<$Res> {
  __$$DeckSetShuffleCardsImplCopyWithImpl(_$DeckSetShuffleCardsImpl _value,
      $Res Function(_$DeckSetShuffleCardsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shuffleCards = null,
  }) {
    return _then(_$DeckSetShuffleCardsImpl(
      shuffleCards: null == shuffleCards
          ? _value.shuffleCards
          : shuffleCards // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DeckSetShuffleCardsImpl implements DeckSetShuffleCards {
  const _$DeckSetShuffleCardsImpl({required this.shuffleCards});

  @override
  final bool shuffleCards;

  @override
  String toString() {
    return 'DeckEvent.setShuffleCards(shuffleCards: $shuffleCards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeckSetShuffleCardsImpl &&
            (identical(other.shuffleCards, shuffleCards) ||
                other.shuffleCards == shuffleCards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shuffleCards);

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeckSetShuffleCardsImplCopyWith<_$DeckSetShuffleCardsImpl> get copyWith =>
      __$$DeckSetShuffleCardsImplCopyWithImpl<_$DeckSetShuffleCardsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
    required TResult Function(DeckModel? deck) set,
    required TResult Function(String name) edit,
    required TResult Function() delete,
    required TResult Function() resetScheduling,
    required TResult Function(bool shuffleCards) setShuffleCards,
  }) {
    return setShuffleCards(shuffleCards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? load,
    TResult? Function(DeckModel? deck)? set,
    TResult? Function(String name)? edit,
    TResult? Function()? delete,
    TResult? Function()? resetScheduling,
    TResult? Function(bool shuffleCards)? setShuffleCards,
  }) {
    return setShuffleCards?.call(shuffleCards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    TResult Function(DeckModel? deck)? set,
    TResult Function(String name)? edit,
    TResult Function()? delete,
    TResult Function()? resetScheduling,
    TResult Function(bool shuffleCards)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (setShuffleCards != null) {
      return setShuffleCards(shuffleCards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckLoad value) load,
    required TResult Function(DeckSet value) set,
    required TResult Function(DeckEdit value) edit,
    required TResult Function(DeckDelete value) delete,
    required TResult Function(DeckResetScheduling value) resetScheduling,
    required TResult Function(DeckSetShuffleCards value) setShuffleCards,
  }) {
    return setShuffleCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckLoad value)? load,
    TResult? Function(DeckSet value)? set,
    TResult? Function(DeckEdit value)? edit,
    TResult? Function(DeckDelete value)? delete,
    TResult? Function(DeckResetScheduling value)? resetScheduling,
    TResult? Function(DeckSetShuffleCards value)? setShuffleCards,
  }) {
    return setShuffleCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckLoad value)? load,
    TResult Function(DeckSet value)? set,
    TResult Function(DeckEdit value)? edit,
    TResult Function(DeckDelete value)? delete,
    TResult Function(DeckResetScheduling value)? resetScheduling,
    TResult Function(DeckSetShuffleCards value)? setShuffleCards,
    required TResult orElse(),
  }) {
    if (setShuffleCards != null) {
      return setShuffleCards(this);
    }
    return orElse();
  }
}

abstract class DeckSetShuffleCards implements DeckEvent {
  const factory DeckSetShuffleCards({required final bool shuffleCards}) =
      _$DeckSetShuffleCardsImpl;

  bool get shuffleCards;

  /// Create a copy of DeckEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeckSetShuffleCardsImplCopyWith<_$DeckSetShuffleCardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DeckModel deck) loaded,
    required TResult Function() error,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DeckModel deck)? loaded,
    TResult? Function()? error,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DeckModel deck)? loaded,
    TResult Function()? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckInitial value) initial,
    required TResult Function(DeckLoading value) loading,
    required TResult Function(DeckLoaded value) loaded,
    required TResult Function(DeckError value) error,
    required TResult Function(DeckDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckInitial value)? initial,
    TResult? Function(DeckLoading value)? loading,
    TResult? Function(DeckLoaded value)? loaded,
    TResult? Function(DeckError value)? error,
    TResult? Function(DeckDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckInitial value)? initial,
    TResult Function(DeckLoading value)? loading,
    TResult Function(DeckLoaded value)? loaded,
    TResult Function(DeckError value)? error,
    TResult Function(DeckDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeckStateCopyWith<$Res> {
  factory $DeckStateCopyWith(DeckState value, $Res Function(DeckState) then) =
      _$DeckStateCopyWithImpl<$Res, DeckState>;
}

/// @nodoc
class _$DeckStateCopyWithImpl<$Res, $Val extends DeckState>
    implements $DeckStateCopyWith<$Res> {
  _$DeckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeckInitialImplCopyWith<$Res> {
  factory _$$DeckInitialImplCopyWith(
          _$DeckInitialImpl value, $Res Function(_$DeckInitialImpl) then) =
      __$$DeckInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeckInitialImplCopyWithImpl<$Res>
    extends _$DeckStateCopyWithImpl<$Res, _$DeckInitialImpl>
    implements _$$DeckInitialImplCopyWith<$Res> {
  __$$DeckInitialImplCopyWithImpl(
      _$DeckInitialImpl _value, $Res Function(_$DeckInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeckInitialImpl implements DeckInitial {
  const _$DeckInitialImpl();

  @override
  String toString() {
    return 'DeckState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeckInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DeckModel deck) loaded,
    required TResult Function() error,
    required TResult Function() deleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DeckModel deck)? loaded,
    TResult? Function()? error,
    TResult? Function()? deleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DeckModel deck)? loaded,
    TResult Function()? error,
    TResult Function()? deleted,
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
    required TResult Function(DeckInitial value) initial,
    required TResult Function(DeckLoading value) loading,
    required TResult Function(DeckLoaded value) loaded,
    required TResult Function(DeckError value) error,
    required TResult Function(DeckDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckInitial value)? initial,
    TResult? Function(DeckLoading value)? loading,
    TResult? Function(DeckLoaded value)? loaded,
    TResult? Function(DeckError value)? error,
    TResult? Function(DeckDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckInitial value)? initial,
    TResult Function(DeckLoading value)? loading,
    TResult Function(DeckLoaded value)? loaded,
    TResult Function(DeckError value)? error,
    TResult Function(DeckDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeckInitial implements DeckState {
  const factory DeckInitial() = _$DeckInitialImpl;
}

/// @nodoc
abstract class _$$DeckLoadingImplCopyWith<$Res> {
  factory _$$DeckLoadingImplCopyWith(
          _$DeckLoadingImpl value, $Res Function(_$DeckLoadingImpl) then) =
      __$$DeckLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeckLoadingImplCopyWithImpl<$Res>
    extends _$DeckStateCopyWithImpl<$Res, _$DeckLoadingImpl>
    implements _$$DeckLoadingImplCopyWith<$Res> {
  __$$DeckLoadingImplCopyWithImpl(
      _$DeckLoadingImpl _value, $Res Function(_$DeckLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeckLoadingImpl implements DeckLoading {
  const _$DeckLoadingImpl();

  @override
  String toString() {
    return 'DeckState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeckLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DeckModel deck) loaded,
    required TResult Function() error,
    required TResult Function() deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DeckModel deck)? loaded,
    TResult? Function()? error,
    TResult? Function()? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DeckModel deck)? loaded,
    TResult Function()? error,
    TResult Function()? deleted,
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
    required TResult Function(DeckInitial value) initial,
    required TResult Function(DeckLoading value) loading,
    required TResult Function(DeckLoaded value) loaded,
    required TResult Function(DeckError value) error,
    required TResult Function(DeckDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckInitial value)? initial,
    TResult? Function(DeckLoading value)? loading,
    TResult? Function(DeckLoaded value)? loaded,
    TResult? Function(DeckError value)? error,
    TResult? Function(DeckDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckInitial value)? initial,
    TResult Function(DeckLoading value)? loading,
    TResult Function(DeckLoaded value)? loaded,
    TResult Function(DeckError value)? error,
    TResult Function(DeckDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeckLoading implements DeckState {
  const factory DeckLoading() = _$DeckLoadingImpl;
}

/// @nodoc
abstract class _$$DeckLoadedImplCopyWith<$Res> {
  factory _$$DeckLoadedImplCopyWith(
          _$DeckLoadedImpl value, $Res Function(_$DeckLoadedImpl) then) =
      __$$DeckLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeckModel deck});

  $DeckModelCopyWith<$Res> get deck;
}

/// @nodoc
class __$$DeckLoadedImplCopyWithImpl<$Res>
    extends _$DeckStateCopyWithImpl<$Res, _$DeckLoadedImpl>
    implements _$$DeckLoadedImplCopyWith<$Res> {
  __$$DeckLoadedImplCopyWithImpl(
      _$DeckLoadedImpl _value, $Res Function(_$DeckLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deck = null,
  }) {
    return _then(_$DeckLoadedImpl(
      deck: null == deck
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as DeckModel,
    ));
  }

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeckModelCopyWith<$Res> get deck {
    return $DeckModelCopyWith<$Res>(_value.deck, (value) {
      return _then(_value.copyWith(deck: value));
    });
  }
}

/// @nodoc

class _$DeckLoadedImpl implements DeckLoaded {
  const _$DeckLoadedImpl({required this.deck});

  @override
  final DeckModel deck;

  @override
  String toString() {
    return 'DeckState.loaded(deck: $deck)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeckLoadedImpl &&
            (identical(other.deck, deck) || other.deck == deck));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deck);

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeckLoadedImplCopyWith<_$DeckLoadedImpl> get copyWith =>
      __$$DeckLoadedImplCopyWithImpl<_$DeckLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DeckModel deck) loaded,
    required TResult Function() error,
    required TResult Function() deleted,
  }) {
    return loaded(deck);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DeckModel deck)? loaded,
    TResult? Function()? error,
    TResult? Function()? deleted,
  }) {
    return loaded?.call(deck);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DeckModel deck)? loaded,
    TResult Function()? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(deck);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckInitial value) initial,
    required TResult Function(DeckLoading value) loading,
    required TResult Function(DeckLoaded value) loaded,
    required TResult Function(DeckError value) error,
    required TResult Function(DeckDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckInitial value)? initial,
    TResult? Function(DeckLoading value)? loading,
    TResult? Function(DeckLoaded value)? loaded,
    TResult? Function(DeckError value)? error,
    TResult? Function(DeckDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckInitial value)? initial,
    TResult Function(DeckLoading value)? loading,
    TResult Function(DeckLoaded value)? loaded,
    TResult Function(DeckError value)? error,
    TResult Function(DeckDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DeckLoaded implements DeckState {
  const factory DeckLoaded({required final DeckModel deck}) = _$DeckLoadedImpl;

  DeckModel get deck;

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeckLoadedImplCopyWith<_$DeckLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeckErrorImplCopyWith<$Res> {
  factory _$$DeckErrorImplCopyWith(
          _$DeckErrorImpl value, $Res Function(_$DeckErrorImpl) then) =
      __$$DeckErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeckErrorImplCopyWithImpl<$Res>
    extends _$DeckStateCopyWithImpl<$Res, _$DeckErrorImpl>
    implements _$$DeckErrorImplCopyWith<$Res> {
  __$$DeckErrorImplCopyWithImpl(
      _$DeckErrorImpl _value, $Res Function(_$DeckErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeckErrorImpl implements DeckError {
  const _$DeckErrorImpl();

  @override
  String toString() {
    return 'DeckState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeckErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DeckModel deck) loaded,
    required TResult Function() error,
    required TResult Function() deleted,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DeckModel deck)? loaded,
    TResult? Function()? error,
    TResult? Function()? deleted,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DeckModel deck)? loaded,
    TResult Function()? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckInitial value) initial,
    required TResult Function(DeckLoading value) loading,
    required TResult Function(DeckLoaded value) loaded,
    required TResult Function(DeckError value) error,
    required TResult Function(DeckDeleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckInitial value)? initial,
    TResult? Function(DeckLoading value)? loading,
    TResult? Function(DeckLoaded value)? loaded,
    TResult? Function(DeckError value)? error,
    TResult? Function(DeckDeleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckInitial value)? initial,
    TResult Function(DeckLoading value)? loading,
    TResult Function(DeckLoaded value)? loaded,
    TResult Function(DeckError value)? error,
    TResult Function(DeckDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeckError implements DeckState {
  const factory DeckError() = _$DeckErrorImpl;
}

/// @nodoc
abstract class _$$DeckDeletedImplCopyWith<$Res> {
  factory _$$DeckDeletedImplCopyWith(
          _$DeckDeletedImpl value, $Res Function(_$DeckDeletedImpl) then) =
      __$$DeckDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeckDeletedImplCopyWithImpl<$Res>
    extends _$DeckStateCopyWithImpl<$Res, _$DeckDeletedImpl>
    implements _$$DeckDeletedImplCopyWith<$Res> {
  __$$DeckDeletedImplCopyWithImpl(
      _$DeckDeletedImpl _value, $Res Function(_$DeckDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeckDeletedImpl implements DeckDeleted {
  const _$DeckDeletedImpl();

  @override
  String toString() {
    return 'DeckState.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeckDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DeckModel deck) loaded,
    required TResult Function() error,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(DeckModel deck)? loaded,
    TResult? Function()? error,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DeckModel deck)? loaded,
    TResult Function()? error,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeckInitial value) initial,
    required TResult Function(DeckLoading value) loading,
    required TResult Function(DeckLoaded value) loaded,
    required TResult Function(DeckError value) error,
    required TResult Function(DeckDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeckInitial value)? initial,
    TResult? Function(DeckLoading value)? loading,
    TResult? Function(DeckLoaded value)? loaded,
    TResult? Function(DeckError value)? error,
    TResult? Function(DeckDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeckInitial value)? initial,
    TResult Function(DeckLoading value)? loading,
    TResult Function(DeckLoaded value)? loaded,
    TResult Function(DeckError value)? error,
    TResult Function(DeckDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class DeckDeleted implements DeckState {
  const factory DeckDeleted() = _$DeckDeletedImpl;
}
