// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId) load,
    required TResult Function(String frontText, String backText) create,
    required TResult Function(int deckId, List<CardModel> cards) set,
    required TResult Function(int cardId, String frontText, String backText)
        edit,
    required TResult Function(int cardId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId)? load,
    TResult? Function(String frontText, String backText)? create,
    TResult? Function(int deckId, List<CardModel> cards)? set,
    TResult? Function(int cardId, String frontText, String backText)? edit,
    TResult? Function(int cardId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId)? load,
    TResult Function(String frontText, String backText)? create,
    TResult Function(int deckId, List<CardModel> cards)? set,
    TResult Function(int cardId, String frontText, String backText)? edit,
    TResult Function(int cardId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsLoad value) load,
    required TResult Function(CardsCreate value) create,
    required TResult Function(CardsSet value) set,
    required TResult Function(CardsEdit value) edit,
    required TResult Function(CardsDelete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsLoad value)? load,
    TResult? Function(CardsCreate value)? create,
    TResult? Function(CardsSet value)? set,
    TResult? Function(CardsEdit value)? edit,
    TResult? Function(CardsDelete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsLoad value)? load,
    TResult Function(CardsCreate value)? create,
    TResult Function(CardsSet value)? set,
    TResult Function(CardsEdit value)? edit,
    TResult Function(CardsDelete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsEventCopyWith<$Res> {
  factory $CardsEventCopyWith(
          CardsEvent value, $Res Function(CardsEvent) then) =
      _$CardsEventCopyWithImpl<$Res, CardsEvent>;
}

/// @nodoc
class _$CardsEventCopyWithImpl<$Res, $Val extends CardsEvent>
    implements $CardsEventCopyWith<$Res> {
  _$CardsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CardsLoadImplCopyWith<$Res> {
  factory _$$CardsLoadImplCopyWith(
          _$CardsLoadImpl value, $Res Function(_$CardsLoadImpl) then) =
      __$$CardsLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int deckId});
}

/// @nodoc
class __$$CardsLoadImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$CardsLoadImpl>
    implements _$$CardsLoadImplCopyWith<$Res> {
  __$$CardsLoadImplCopyWithImpl(
      _$CardsLoadImpl _value, $Res Function(_$CardsLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
  }) {
    return _then(_$CardsLoadImpl(
      deckId: null == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CardsLoadImpl implements CardsLoad {
  const _$CardsLoadImpl({required this.deckId});

  @override
  final int deckId;

  @override
  String toString() {
    return 'CardsEvent.load(deckId: $deckId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsLoadImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckId);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsLoadImplCopyWith<_$CardsLoadImpl> get copyWith =>
      __$$CardsLoadImplCopyWithImpl<_$CardsLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId) load,
    required TResult Function(String frontText, String backText) create,
    required TResult Function(int deckId, List<CardModel> cards) set,
    required TResult Function(int cardId, String frontText, String backText)
        edit,
    required TResult Function(int cardId) delete,
  }) {
    return load(deckId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId)? load,
    TResult? Function(String frontText, String backText)? create,
    TResult? Function(int deckId, List<CardModel> cards)? set,
    TResult? Function(int cardId, String frontText, String backText)? edit,
    TResult? Function(int cardId)? delete,
  }) {
    return load?.call(deckId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId)? load,
    TResult Function(String frontText, String backText)? create,
    TResult Function(int deckId, List<CardModel> cards)? set,
    TResult Function(int cardId, String frontText, String backText)? edit,
    TResult Function(int cardId)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(deckId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsLoad value) load,
    required TResult Function(CardsCreate value) create,
    required TResult Function(CardsSet value) set,
    required TResult Function(CardsEdit value) edit,
    required TResult Function(CardsDelete value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsLoad value)? load,
    TResult? Function(CardsCreate value)? create,
    TResult? Function(CardsSet value)? set,
    TResult? Function(CardsEdit value)? edit,
    TResult? Function(CardsDelete value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsLoad value)? load,
    TResult Function(CardsCreate value)? create,
    TResult Function(CardsSet value)? set,
    TResult Function(CardsEdit value)? edit,
    TResult Function(CardsDelete value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class CardsLoad implements CardsEvent {
  const factory CardsLoad({required final int deckId}) = _$CardsLoadImpl;

  int get deckId;

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardsLoadImplCopyWith<_$CardsLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardsCreateImplCopyWith<$Res> {
  factory _$$CardsCreateImplCopyWith(
          _$CardsCreateImpl value, $Res Function(_$CardsCreateImpl) then) =
      __$$CardsCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String frontText, String backText});
}

/// @nodoc
class __$$CardsCreateImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$CardsCreateImpl>
    implements _$$CardsCreateImplCopyWith<$Res> {
  __$$CardsCreateImplCopyWithImpl(
      _$CardsCreateImpl _value, $Res Function(_$CardsCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontText = null,
    Object? backText = null,
  }) {
    return _then(_$CardsCreateImpl(
      frontText: null == frontText
          ? _value.frontText
          : frontText // ignore: cast_nullable_to_non_nullable
              as String,
      backText: null == backText
          ? _value.backText
          : backText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardsCreateImpl implements CardsCreate {
  const _$CardsCreateImpl({required this.frontText, required this.backText});

  @override
  final String frontText;
  @override
  final String backText;

  @override
  String toString() {
    return 'CardsEvent.create(frontText: $frontText, backText: $backText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsCreateImpl &&
            (identical(other.frontText, frontText) ||
                other.frontText == frontText) &&
            (identical(other.backText, backText) ||
                other.backText == backText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, frontText, backText);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsCreateImplCopyWith<_$CardsCreateImpl> get copyWith =>
      __$$CardsCreateImplCopyWithImpl<_$CardsCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId) load,
    required TResult Function(String frontText, String backText) create,
    required TResult Function(int deckId, List<CardModel> cards) set,
    required TResult Function(int cardId, String frontText, String backText)
        edit,
    required TResult Function(int cardId) delete,
  }) {
    return create(frontText, backText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId)? load,
    TResult? Function(String frontText, String backText)? create,
    TResult? Function(int deckId, List<CardModel> cards)? set,
    TResult? Function(int cardId, String frontText, String backText)? edit,
    TResult? Function(int cardId)? delete,
  }) {
    return create?.call(frontText, backText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId)? load,
    TResult Function(String frontText, String backText)? create,
    TResult Function(int deckId, List<CardModel> cards)? set,
    TResult Function(int cardId, String frontText, String backText)? edit,
    TResult Function(int cardId)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(frontText, backText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsLoad value) load,
    required TResult Function(CardsCreate value) create,
    required TResult Function(CardsSet value) set,
    required TResult Function(CardsEdit value) edit,
    required TResult Function(CardsDelete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsLoad value)? load,
    TResult? Function(CardsCreate value)? create,
    TResult? Function(CardsSet value)? set,
    TResult? Function(CardsEdit value)? edit,
    TResult? Function(CardsDelete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsLoad value)? load,
    TResult Function(CardsCreate value)? create,
    TResult Function(CardsSet value)? set,
    TResult Function(CardsEdit value)? edit,
    TResult Function(CardsDelete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class CardsCreate implements CardsEvent {
  const factory CardsCreate(
      {required final String frontText,
      required final String backText}) = _$CardsCreateImpl;

  String get frontText;
  String get backText;

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardsCreateImplCopyWith<_$CardsCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardsSetImplCopyWith<$Res> {
  factory _$$CardsSetImplCopyWith(
          _$CardsSetImpl value, $Res Function(_$CardsSetImpl) then) =
      __$$CardsSetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int deckId, List<CardModel> cards});
}

/// @nodoc
class __$$CardsSetImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$CardsSetImpl>
    implements _$$CardsSetImplCopyWith<$Res> {
  __$$CardsSetImplCopyWithImpl(
      _$CardsSetImpl _value, $Res Function(_$CardsSetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
    Object? cards = null,
  }) {
    return _then(_$CardsSetImpl(
      deckId: null == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc

class _$CardsSetImpl implements CardsSet {
  const _$CardsSetImpl(
      {required this.deckId, required final List<CardModel> cards})
      : _cards = cards;

  @override
  final int deckId;
  final List<CardModel> _cards;
  @override
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CardsEvent.set(deckId: $deckId, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsSetImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, deckId, const DeepCollectionEquality().hash(_cards));

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsSetImplCopyWith<_$CardsSetImpl> get copyWith =>
      __$$CardsSetImplCopyWithImpl<_$CardsSetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId) load,
    required TResult Function(String frontText, String backText) create,
    required TResult Function(int deckId, List<CardModel> cards) set,
    required TResult Function(int cardId, String frontText, String backText)
        edit,
    required TResult Function(int cardId) delete,
  }) {
    return set(deckId, cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId)? load,
    TResult? Function(String frontText, String backText)? create,
    TResult? Function(int deckId, List<CardModel> cards)? set,
    TResult? Function(int cardId, String frontText, String backText)? edit,
    TResult? Function(int cardId)? delete,
  }) {
    return set?.call(deckId, cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId)? load,
    TResult Function(String frontText, String backText)? create,
    TResult Function(int deckId, List<CardModel> cards)? set,
    TResult Function(int cardId, String frontText, String backText)? edit,
    TResult Function(int cardId)? delete,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(deckId, cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsLoad value) load,
    required TResult Function(CardsCreate value) create,
    required TResult Function(CardsSet value) set,
    required TResult Function(CardsEdit value) edit,
    required TResult Function(CardsDelete value) delete,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsLoad value)? load,
    TResult? Function(CardsCreate value)? create,
    TResult? Function(CardsSet value)? set,
    TResult? Function(CardsEdit value)? edit,
    TResult? Function(CardsDelete value)? delete,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsLoad value)? load,
    TResult Function(CardsCreate value)? create,
    TResult Function(CardsSet value)? set,
    TResult Function(CardsEdit value)? edit,
    TResult Function(CardsDelete value)? delete,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class CardsSet implements CardsEvent {
  const factory CardsSet(
      {required final int deckId,
      required final List<CardModel> cards}) = _$CardsSetImpl;

  int get deckId;
  List<CardModel> get cards;

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardsSetImplCopyWith<_$CardsSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardsEditImplCopyWith<$Res> {
  factory _$$CardsEditImplCopyWith(
          _$CardsEditImpl value, $Res Function(_$CardsEditImpl) then) =
      __$$CardsEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cardId, String frontText, String backText});
}

/// @nodoc
class __$$CardsEditImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$CardsEditImpl>
    implements _$$CardsEditImplCopyWith<$Res> {
  __$$CardsEditImplCopyWithImpl(
      _$CardsEditImpl _value, $Res Function(_$CardsEditImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? frontText = null,
    Object? backText = null,
  }) {
    return _then(_$CardsEditImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      frontText: null == frontText
          ? _value.frontText
          : frontText // ignore: cast_nullable_to_non_nullable
              as String,
      backText: null == backText
          ? _value.backText
          : backText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CardsEditImpl implements CardsEdit {
  const _$CardsEditImpl(
      {required this.cardId, required this.frontText, required this.backText});

  @override
  final int cardId;
  @override
  final String frontText;
  @override
  final String backText;

  @override
  String toString() {
    return 'CardsEvent.edit(cardId: $cardId, frontText: $frontText, backText: $backText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsEditImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.frontText, frontText) ||
                other.frontText == frontText) &&
            (identical(other.backText, backText) ||
                other.backText == backText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardId, frontText, backText);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsEditImplCopyWith<_$CardsEditImpl> get copyWith =>
      __$$CardsEditImplCopyWithImpl<_$CardsEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId) load,
    required TResult Function(String frontText, String backText) create,
    required TResult Function(int deckId, List<CardModel> cards) set,
    required TResult Function(int cardId, String frontText, String backText)
        edit,
    required TResult Function(int cardId) delete,
  }) {
    return edit(cardId, frontText, backText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId)? load,
    TResult? Function(String frontText, String backText)? create,
    TResult? Function(int deckId, List<CardModel> cards)? set,
    TResult? Function(int cardId, String frontText, String backText)? edit,
    TResult? Function(int cardId)? delete,
  }) {
    return edit?.call(cardId, frontText, backText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId)? load,
    TResult Function(String frontText, String backText)? create,
    TResult Function(int deckId, List<CardModel> cards)? set,
    TResult Function(int cardId, String frontText, String backText)? edit,
    TResult Function(int cardId)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(cardId, frontText, backText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsLoad value) load,
    required TResult Function(CardsCreate value) create,
    required TResult Function(CardsSet value) set,
    required TResult Function(CardsEdit value) edit,
    required TResult Function(CardsDelete value) delete,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsLoad value)? load,
    TResult? Function(CardsCreate value)? create,
    TResult? Function(CardsSet value)? set,
    TResult? Function(CardsEdit value)? edit,
    TResult? Function(CardsDelete value)? delete,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsLoad value)? load,
    TResult Function(CardsCreate value)? create,
    TResult Function(CardsSet value)? set,
    TResult Function(CardsEdit value)? edit,
    TResult Function(CardsDelete value)? delete,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class CardsEdit implements CardsEvent {
  const factory CardsEdit(
      {required final int cardId,
      required final String frontText,
      required final String backText}) = _$CardsEditImpl;

  int get cardId;
  String get frontText;
  String get backText;

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardsEditImplCopyWith<_$CardsEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardsDeleteImplCopyWith<$Res> {
  factory _$$CardsDeleteImplCopyWith(
          _$CardsDeleteImpl value, $Res Function(_$CardsDeleteImpl) then) =
      __$$CardsDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cardId});
}

/// @nodoc
class __$$CardsDeleteImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$CardsDeleteImpl>
    implements _$$CardsDeleteImplCopyWith<$Res> {
  __$$CardsDeleteImplCopyWithImpl(
      _$CardsDeleteImpl _value, $Res Function(_$CardsDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
  }) {
    return _then(_$CardsDeleteImpl(
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CardsDeleteImpl implements CardsDelete {
  const _$CardsDeleteImpl({required this.cardId});

  @override
  final int cardId;

  @override
  String toString() {
    return 'CardsEvent.delete(cardId: $cardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsDeleteImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardId);

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsDeleteImplCopyWith<_$CardsDeleteImpl> get copyWith =>
      __$$CardsDeleteImplCopyWithImpl<_$CardsDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId) load,
    required TResult Function(String frontText, String backText) create,
    required TResult Function(int deckId, List<CardModel> cards) set,
    required TResult Function(int cardId, String frontText, String backText)
        edit,
    required TResult Function(int cardId) delete,
  }) {
    return delete(cardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId)? load,
    TResult? Function(String frontText, String backText)? create,
    TResult? Function(int deckId, List<CardModel> cards)? set,
    TResult? Function(int cardId, String frontText, String backText)? edit,
    TResult? Function(int cardId)? delete,
  }) {
    return delete?.call(cardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId)? load,
    TResult Function(String frontText, String backText)? create,
    TResult Function(int deckId, List<CardModel> cards)? set,
    TResult Function(int cardId, String frontText, String backText)? edit,
    TResult Function(int cardId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(cardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsLoad value) load,
    required TResult Function(CardsCreate value) create,
    required TResult Function(CardsSet value) set,
    required TResult Function(CardsEdit value) edit,
    required TResult Function(CardsDelete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsLoad value)? load,
    TResult? Function(CardsCreate value)? create,
    TResult? Function(CardsSet value)? set,
    TResult? Function(CardsEdit value)? edit,
    TResult? Function(CardsDelete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsLoad value)? load,
    TResult Function(CardsCreate value)? create,
    TResult Function(CardsSet value)? set,
    TResult Function(CardsEdit value)? edit,
    TResult Function(CardsDelete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class CardsDelete implements CardsEvent {
  const factory CardsDelete({required final int cardId}) = _$CardsDeleteImpl;

  int get cardId;

  /// Create a copy of CardsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardsDeleteImplCopyWith<_$CardsDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deckId, List<CardModel> cards) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deckId, List<CardModel> cards)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deckId, List<CardModel> cards)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsLoading value) loading,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsInitial value)? initial,
    TResult? Function(CardsLoading value)? loading,
    TResult? Function(CardsLoaded value)? loaded,
    TResult? Function(CardsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsLoading value)? loading,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsStateCopyWith<$Res> {
  factory $CardsStateCopyWith(
          CardsState value, $Res Function(CardsState) then) =
      _$CardsStateCopyWithImpl<$Res, CardsState>;
}

/// @nodoc
class _$CardsStateCopyWithImpl<$Res, $Val extends CardsState>
    implements $CardsStateCopyWith<$Res> {
  _$CardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CardsInitialImplCopyWith<$Res> {
  factory _$$CardsInitialImplCopyWith(
          _$CardsInitialImpl value, $Res Function(_$CardsInitialImpl) then) =
      __$$CardsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardsInitialImplCopyWithImpl<$Res>
    extends _$CardsStateCopyWithImpl<$Res, _$CardsInitialImpl>
    implements _$$CardsInitialImplCopyWith<$Res> {
  __$$CardsInitialImplCopyWithImpl(
      _$CardsInitialImpl _value, $Res Function(_$CardsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CardsInitialImpl implements CardsInitial {
  const _$CardsInitialImpl();

  @override
  String toString() {
    return 'CardsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deckId, List<CardModel> cards) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deckId, List<CardModel> cards)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deckId, List<CardModel> cards)? loaded,
    TResult Function()? error,
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
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsLoading value) loading,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsInitial value)? initial,
    TResult? Function(CardsLoading value)? loading,
    TResult? Function(CardsLoaded value)? loaded,
    TResult? Function(CardsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsLoading value)? loading,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CardsInitial implements CardsState {
  const factory CardsInitial() = _$CardsInitialImpl;
}

/// @nodoc
abstract class _$$CardsLoadingImplCopyWith<$Res> {
  factory _$$CardsLoadingImplCopyWith(
          _$CardsLoadingImpl value, $Res Function(_$CardsLoadingImpl) then) =
      __$$CardsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardsLoadingImplCopyWithImpl<$Res>
    extends _$CardsStateCopyWithImpl<$Res, _$CardsLoadingImpl>
    implements _$$CardsLoadingImplCopyWith<$Res> {
  __$$CardsLoadingImplCopyWithImpl(
      _$CardsLoadingImpl _value, $Res Function(_$CardsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CardsLoadingImpl implements CardsLoading {
  const _$CardsLoadingImpl();

  @override
  String toString() {
    return 'CardsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deckId, List<CardModel> cards) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deckId, List<CardModel> cards)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deckId, List<CardModel> cards)? loaded,
    TResult Function()? error,
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
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsLoading value) loading,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsInitial value)? initial,
    TResult? Function(CardsLoading value)? loading,
    TResult? Function(CardsLoaded value)? loaded,
    TResult? Function(CardsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsLoading value)? loading,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CardsLoading implements CardsState {
  const factory CardsLoading() = _$CardsLoadingImpl;
}

/// @nodoc
abstract class _$$CardsLoadedImplCopyWith<$Res> {
  factory _$$CardsLoadedImplCopyWith(
          _$CardsLoadedImpl value, $Res Function(_$CardsLoadedImpl) then) =
      __$$CardsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int deckId, List<CardModel> cards});
}

/// @nodoc
class __$$CardsLoadedImplCopyWithImpl<$Res>
    extends _$CardsStateCopyWithImpl<$Res, _$CardsLoadedImpl>
    implements _$$CardsLoadedImplCopyWith<$Res> {
  __$$CardsLoadedImplCopyWithImpl(
      _$CardsLoadedImpl _value, $Res Function(_$CardsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
    Object? cards = null,
  }) {
    return _then(_$CardsLoadedImpl(
      deckId: null == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc

class _$CardsLoadedImpl implements CardsLoaded {
  const _$CardsLoadedImpl(
      {required this.deckId, required final List<CardModel> cards})
      : _cards = cards;

  @override
  final int deckId;
  final List<CardModel> _cards;
  @override
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CardsState.loaded(deckId: $deckId, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsLoadedImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, deckId, const DeepCollectionEquality().hash(_cards));

  /// Create a copy of CardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsLoadedImplCopyWith<_$CardsLoadedImpl> get copyWith =>
      __$$CardsLoadedImplCopyWithImpl<_$CardsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deckId, List<CardModel> cards) loaded,
    required TResult Function() error,
  }) {
    return loaded(deckId, cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deckId, List<CardModel> cards)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(deckId, cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deckId, List<CardModel> cards)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(deckId, cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsLoading value) loading,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsInitial value)? initial,
    TResult? Function(CardsLoading value)? loading,
    TResult? Function(CardsLoaded value)? loaded,
    TResult? Function(CardsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsLoading value)? loading,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CardsLoaded implements CardsState {
  const factory CardsLoaded(
      {required final int deckId,
      required final List<CardModel> cards}) = _$CardsLoadedImpl;

  int get deckId;
  List<CardModel> get cards;

  /// Create a copy of CardsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardsLoadedImplCopyWith<_$CardsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardsErrorImplCopyWith<$Res> {
  factory _$$CardsErrorImplCopyWith(
          _$CardsErrorImpl value, $Res Function(_$CardsErrorImpl) then) =
      __$$CardsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardsErrorImplCopyWithImpl<$Res>
    extends _$CardsStateCopyWithImpl<$Res, _$CardsErrorImpl>
    implements _$$CardsErrorImplCopyWith<$Res> {
  __$$CardsErrorImplCopyWithImpl(
      _$CardsErrorImpl _value, $Res Function(_$CardsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CardsErrorImpl implements CardsError {
  const _$CardsErrorImpl();

  @override
  String toString() {
    return 'CardsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int deckId, List<CardModel> cards) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int deckId, List<CardModel> cards)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int deckId, List<CardModel> cards)? loaded,
    TResult Function()? error,
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
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsLoading value) loading,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsInitial value)? initial,
    TResult? Function(CardsLoading value)? loading,
    TResult? Function(CardsLoaded value)? loaded,
    TResult? Function(CardsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsLoading value)? loading,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CardsError implements CardsState {
  const factory CardsError() = _$CardsErrorImpl;
}
