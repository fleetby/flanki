// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId, bool trainingMode) load,
    required TResult Function() showAnswer,
    required TResult Function(CardRate rate) rateCard,
    required TResult Function() restorePreviousCard,
    required TResult Function(List<CardModel> cards) updateCards,
    required TResult Function(int cardId, String frontText, String backText)
        editCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId, bool trainingMode)? load,
    TResult? Function()? showAnswer,
    TResult? Function(CardRate rate)? rateCard,
    TResult? Function()? restorePreviousCard,
    TResult? Function(List<CardModel> cards)? updateCards,
    TResult? Function(int cardId, String frontText, String backText)? editCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId, bool trainingMode)? load,
    TResult Function()? showAnswer,
    TResult Function(CardRate rate)? rateCard,
    TResult Function()? restorePreviousCard,
    TResult Function(List<CardModel> cards)? updateCards,
    TResult Function(int cardId, String frontText, String backText)? editCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyLoad value) load,
    required TResult Function(StudyShowAnswer value) showAnswer,
    required TResult Function(StudyRateCard value) rateCard,
    required TResult Function(StudyRestorePreviousCard value)
        restorePreviousCard,
    required TResult Function(StudyUpdateCards value) updateCards,
    required TResult Function(StudyEditCard value) editCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyLoad value)? load,
    TResult? Function(StudyShowAnswer value)? showAnswer,
    TResult? Function(StudyRateCard value)? rateCard,
    TResult? Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult? Function(StudyUpdateCards value)? updateCards,
    TResult? Function(StudyEditCard value)? editCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyLoad value)? load,
    TResult Function(StudyShowAnswer value)? showAnswer,
    TResult Function(StudyRateCard value)? rateCard,
    TResult Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult Function(StudyUpdateCards value)? updateCards,
    TResult Function(StudyEditCard value)? editCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyEventCopyWith<$Res> {
  factory $StudyEventCopyWith(
          StudyEvent value, $Res Function(StudyEvent) then) =
      _$StudyEventCopyWithImpl<$Res, StudyEvent>;
}

/// @nodoc
class _$StudyEventCopyWithImpl<$Res, $Val extends StudyEvent>
    implements $StudyEventCopyWith<$Res> {
  _$StudyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StudyLoadImplCopyWith<$Res> {
  factory _$$StudyLoadImplCopyWith(
          _$StudyLoadImpl value, $Res Function(_$StudyLoadImpl) then) =
      __$$StudyLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int deckId, bool trainingMode});
}

/// @nodoc
class __$$StudyLoadImplCopyWithImpl<$Res>
    extends _$StudyEventCopyWithImpl<$Res, _$StudyLoadImpl>
    implements _$$StudyLoadImplCopyWith<$Res> {
  __$$StudyLoadImplCopyWithImpl(
      _$StudyLoadImpl _value, $Res Function(_$StudyLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
    Object? trainingMode = null,
  }) {
    return _then(_$StudyLoadImpl(
      deckId: null == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
      trainingMode: null == trainingMode
          ? _value.trainingMode
          : trainingMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StudyLoadImpl implements StudyLoad {
  const _$StudyLoadImpl({required this.deckId, this.trainingMode = false});

  @override
  final int deckId;
  @override
  @JsonKey()
  final bool trainingMode;

  @override
  String toString() {
    return 'StudyEvent.load(deckId: $deckId, trainingMode: $trainingMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyLoadImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId) &&
            (identical(other.trainingMode, trainingMode) ||
                other.trainingMode == trainingMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckId, trainingMode);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyLoadImplCopyWith<_$StudyLoadImpl> get copyWith =>
      __$$StudyLoadImplCopyWithImpl<_$StudyLoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId, bool trainingMode) load,
    required TResult Function() showAnswer,
    required TResult Function(CardRate rate) rateCard,
    required TResult Function() restorePreviousCard,
    required TResult Function(List<CardModel> cards) updateCards,
    required TResult Function(int cardId, String frontText, String backText)
        editCard,
  }) {
    return load(deckId, trainingMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId, bool trainingMode)? load,
    TResult? Function()? showAnswer,
    TResult? Function(CardRate rate)? rateCard,
    TResult? Function()? restorePreviousCard,
    TResult? Function(List<CardModel> cards)? updateCards,
    TResult? Function(int cardId, String frontText, String backText)? editCard,
  }) {
    return load?.call(deckId, trainingMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId, bool trainingMode)? load,
    TResult Function()? showAnswer,
    TResult Function(CardRate rate)? rateCard,
    TResult Function()? restorePreviousCard,
    TResult Function(List<CardModel> cards)? updateCards,
    TResult Function(int cardId, String frontText, String backText)? editCard,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(deckId, trainingMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyLoad value) load,
    required TResult Function(StudyShowAnswer value) showAnswer,
    required TResult Function(StudyRateCard value) rateCard,
    required TResult Function(StudyRestorePreviousCard value)
        restorePreviousCard,
    required TResult Function(StudyUpdateCards value) updateCards,
    required TResult Function(StudyEditCard value) editCard,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyLoad value)? load,
    TResult? Function(StudyShowAnswer value)? showAnswer,
    TResult? Function(StudyRateCard value)? rateCard,
    TResult? Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult? Function(StudyUpdateCards value)? updateCards,
    TResult? Function(StudyEditCard value)? editCard,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyLoad value)? load,
    TResult Function(StudyShowAnswer value)? showAnswer,
    TResult Function(StudyRateCard value)? rateCard,
    TResult Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult Function(StudyUpdateCards value)? updateCards,
    TResult Function(StudyEditCard value)? editCard,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class StudyLoad implements StudyEvent {
  const factory StudyLoad(
      {required final int deckId, final bool trainingMode}) = _$StudyLoadImpl;

  int get deckId;
  bool get trainingMode;

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyLoadImplCopyWith<_$StudyLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudyShowAnswerImplCopyWith<$Res> {
  factory _$$StudyShowAnswerImplCopyWith(_$StudyShowAnswerImpl value,
          $Res Function(_$StudyShowAnswerImpl) then) =
      __$$StudyShowAnswerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudyShowAnswerImplCopyWithImpl<$Res>
    extends _$StudyEventCopyWithImpl<$Res, _$StudyShowAnswerImpl>
    implements _$$StudyShowAnswerImplCopyWith<$Res> {
  __$$StudyShowAnswerImplCopyWithImpl(
      _$StudyShowAnswerImpl _value, $Res Function(_$StudyShowAnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StudyShowAnswerImpl implements StudyShowAnswer {
  const _$StudyShowAnswerImpl();

  @override
  String toString() {
    return 'StudyEvent.showAnswer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudyShowAnswerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId, bool trainingMode) load,
    required TResult Function() showAnswer,
    required TResult Function(CardRate rate) rateCard,
    required TResult Function() restorePreviousCard,
    required TResult Function(List<CardModel> cards) updateCards,
    required TResult Function(int cardId, String frontText, String backText)
        editCard,
  }) {
    return showAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId, bool trainingMode)? load,
    TResult? Function()? showAnswer,
    TResult? Function(CardRate rate)? rateCard,
    TResult? Function()? restorePreviousCard,
    TResult? Function(List<CardModel> cards)? updateCards,
    TResult? Function(int cardId, String frontText, String backText)? editCard,
  }) {
    return showAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId, bool trainingMode)? load,
    TResult Function()? showAnswer,
    TResult Function(CardRate rate)? rateCard,
    TResult Function()? restorePreviousCard,
    TResult Function(List<CardModel> cards)? updateCards,
    TResult Function(int cardId, String frontText, String backText)? editCard,
    required TResult orElse(),
  }) {
    if (showAnswer != null) {
      return showAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyLoad value) load,
    required TResult Function(StudyShowAnswer value) showAnswer,
    required TResult Function(StudyRateCard value) rateCard,
    required TResult Function(StudyRestorePreviousCard value)
        restorePreviousCard,
    required TResult Function(StudyUpdateCards value) updateCards,
    required TResult Function(StudyEditCard value) editCard,
  }) {
    return showAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyLoad value)? load,
    TResult? Function(StudyShowAnswer value)? showAnswer,
    TResult? Function(StudyRateCard value)? rateCard,
    TResult? Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult? Function(StudyUpdateCards value)? updateCards,
    TResult? Function(StudyEditCard value)? editCard,
  }) {
    return showAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyLoad value)? load,
    TResult Function(StudyShowAnswer value)? showAnswer,
    TResult Function(StudyRateCard value)? rateCard,
    TResult Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult Function(StudyUpdateCards value)? updateCards,
    TResult Function(StudyEditCard value)? editCard,
    required TResult orElse(),
  }) {
    if (showAnswer != null) {
      return showAnswer(this);
    }
    return orElse();
  }
}

abstract class StudyShowAnswer implements StudyEvent {
  const factory StudyShowAnswer() = _$StudyShowAnswerImpl;
}

/// @nodoc
abstract class _$$StudyRateCardImplCopyWith<$Res> {
  factory _$$StudyRateCardImplCopyWith(
          _$StudyRateCardImpl value, $Res Function(_$StudyRateCardImpl) then) =
      __$$StudyRateCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CardRate rate});
}

/// @nodoc
class __$$StudyRateCardImplCopyWithImpl<$Res>
    extends _$StudyEventCopyWithImpl<$Res, _$StudyRateCardImpl>
    implements _$$StudyRateCardImplCopyWith<$Res> {
  __$$StudyRateCardImplCopyWithImpl(
      _$StudyRateCardImpl _value, $Res Function(_$StudyRateCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
  }) {
    return _then(_$StudyRateCardImpl(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as CardRate,
    ));
  }
}

/// @nodoc

class _$StudyRateCardImpl implements StudyRateCard {
  const _$StudyRateCardImpl({required this.rate});

  @override
  final CardRate rate;

  @override
  String toString() {
    return 'StudyEvent.rateCard(rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyRateCardImpl &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyRateCardImplCopyWith<_$StudyRateCardImpl> get copyWith =>
      __$$StudyRateCardImplCopyWithImpl<_$StudyRateCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId, bool trainingMode) load,
    required TResult Function() showAnswer,
    required TResult Function(CardRate rate) rateCard,
    required TResult Function() restorePreviousCard,
    required TResult Function(List<CardModel> cards) updateCards,
    required TResult Function(int cardId, String frontText, String backText)
        editCard,
  }) {
    return rateCard(rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId, bool trainingMode)? load,
    TResult? Function()? showAnswer,
    TResult? Function(CardRate rate)? rateCard,
    TResult? Function()? restorePreviousCard,
    TResult? Function(List<CardModel> cards)? updateCards,
    TResult? Function(int cardId, String frontText, String backText)? editCard,
  }) {
    return rateCard?.call(rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId, bool trainingMode)? load,
    TResult Function()? showAnswer,
    TResult Function(CardRate rate)? rateCard,
    TResult Function()? restorePreviousCard,
    TResult Function(List<CardModel> cards)? updateCards,
    TResult Function(int cardId, String frontText, String backText)? editCard,
    required TResult orElse(),
  }) {
    if (rateCard != null) {
      return rateCard(rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyLoad value) load,
    required TResult Function(StudyShowAnswer value) showAnswer,
    required TResult Function(StudyRateCard value) rateCard,
    required TResult Function(StudyRestorePreviousCard value)
        restorePreviousCard,
    required TResult Function(StudyUpdateCards value) updateCards,
    required TResult Function(StudyEditCard value) editCard,
  }) {
    return rateCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyLoad value)? load,
    TResult? Function(StudyShowAnswer value)? showAnswer,
    TResult? Function(StudyRateCard value)? rateCard,
    TResult? Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult? Function(StudyUpdateCards value)? updateCards,
    TResult? Function(StudyEditCard value)? editCard,
  }) {
    return rateCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyLoad value)? load,
    TResult Function(StudyShowAnswer value)? showAnswer,
    TResult Function(StudyRateCard value)? rateCard,
    TResult Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult Function(StudyUpdateCards value)? updateCards,
    TResult Function(StudyEditCard value)? editCard,
    required TResult orElse(),
  }) {
    if (rateCard != null) {
      return rateCard(this);
    }
    return orElse();
  }
}

abstract class StudyRateCard implements StudyEvent {
  const factory StudyRateCard({required final CardRate rate}) =
      _$StudyRateCardImpl;

  CardRate get rate;

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyRateCardImplCopyWith<_$StudyRateCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudyRestorePreviousCardImplCopyWith<$Res> {
  factory _$$StudyRestorePreviousCardImplCopyWith(
          _$StudyRestorePreviousCardImpl value,
          $Res Function(_$StudyRestorePreviousCardImpl) then) =
      __$$StudyRestorePreviousCardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudyRestorePreviousCardImplCopyWithImpl<$Res>
    extends _$StudyEventCopyWithImpl<$Res, _$StudyRestorePreviousCardImpl>
    implements _$$StudyRestorePreviousCardImplCopyWith<$Res> {
  __$$StudyRestorePreviousCardImplCopyWithImpl(
      _$StudyRestorePreviousCardImpl _value,
      $Res Function(_$StudyRestorePreviousCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StudyRestorePreviousCardImpl implements StudyRestorePreviousCard {
  const _$StudyRestorePreviousCardImpl();

  @override
  String toString() {
    return 'StudyEvent.restorePreviousCard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyRestorePreviousCardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId, bool trainingMode) load,
    required TResult Function() showAnswer,
    required TResult Function(CardRate rate) rateCard,
    required TResult Function() restorePreviousCard,
    required TResult Function(List<CardModel> cards) updateCards,
    required TResult Function(int cardId, String frontText, String backText)
        editCard,
  }) {
    return restorePreviousCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId, bool trainingMode)? load,
    TResult? Function()? showAnswer,
    TResult? Function(CardRate rate)? rateCard,
    TResult? Function()? restorePreviousCard,
    TResult? Function(List<CardModel> cards)? updateCards,
    TResult? Function(int cardId, String frontText, String backText)? editCard,
  }) {
    return restorePreviousCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId, bool trainingMode)? load,
    TResult Function()? showAnswer,
    TResult Function(CardRate rate)? rateCard,
    TResult Function()? restorePreviousCard,
    TResult Function(List<CardModel> cards)? updateCards,
    TResult Function(int cardId, String frontText, String backText)? editCard,
    required TResult orElse(),
  }) {
    if (restorePreviousCard != null) {
      return restorePreviousCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyLoad value) load,
    required TResult Function(StudyShowAnswer value) showAnswer,
    required TResult Function(StudyRateCard value) rateCard,
    required TResult Function(StudyRestorePreviousCard value)
        restorePreviousCard,
    required TResult Function(StudyUpdateCards value) updateCards,
    required TResult Function(StudyEditCard value) editCard,
  }) {
    return restorePreviousCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyLoad value)? load,
    TResult? Function(StudyShowAnswer value)? showAnswer,
    TResult? Function(StudyRateCard value)? rateCard,
    TResult? Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult? Function(StudyUpdateCards value)? updateCards,
    TResult? Function(StudyEditCard value)? editCard,
  }) {
    return restorePreviousCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyLoad value)? load,
    TResult Function(StudyShowAnswer value)? showAnswer,
    TResult Function(StudyRateCard value)? rateCard,
    TResult Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult Function(StudyUpdateCards value)? updateCards,
    TResult Function(StudyEditCard value)? editCard,
    required TResult orElse(),
  }) {
    if (restorePreviousCard != null) {
      return restorePreviousCard(this);
    }
    return orElse();
  }
}

abstract class StudyRestorePreviousCard implements StudyEvent {
  const factory StudyRestorePreviousCard() = _$StudyRestorePreviousCardImpl;
}

/// @nodoc
abstract class _$$StudyUpdateCardsImplCopyWith<$Res> {
  factory _$$StudyUpdateCardsImplCopyWith(_$StudyUpdateCardsImpl value,
          $Res Function(_$StudyUpdateCardsImpl) then) =
      __$$StudyUpdateCardsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CardModel> cards});
}

/// @nodoc
class __$$StudyUpdateCardsImplCopyWithImpl<$Res>
    extends _$StudyEventCopyWithImpl<$Res, _$StudyUpdateCardsImpl>
    implements _$$StudyUpdateCardsImplCopyWith<$Res> {
  __$$StudyUpdateCardsImplCopyWithImpl(_$StudyUpdateCardsImpl _value,
      $Res Function(_$StudyUpdateCardsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$StudyUpdateCardsImpl(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
    ));
  }
}

/// @nodoc

class _$StudyUpdateCardsImpl implements StudyUpdateCards {
  const _$StudyUpdateCardsImpl({required final List<CardModel> cards})
      : _cards = cards;

  final List<CardModel> _cards;
  @override
  List<CardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'StudyEvent.updateCards(cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyUpdateCardsImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyUpdateCardsImplCopyWith<_$StudyUpdateCardsImpl> get copyWith =>
      __$$StudyUpdateCardsImplCopyWithImpl<_$StudyUpdateCardsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId, bool trainingMode) load,
    required TResult Function() showAnswer,
    required TResult Function(CardRate rate) rateCard,
    required TResult Function() restorePreviousCard,
    required TResult Function(List<CardModel> cards) updateCards,
    required TResult Function(int cardId, String frontText, String backText)
        editCard,
  }) {
    return updateCards(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId, bool trainingMode)? load,
    TResult? Function()? showAnswer,
    TResult? Function(CardRate rate)? rateCard,
    TResult? Function()? restorePreviousCard,
    TResult? Function(List<CardModel> cards)? updateCards,
    TResult? Function(int cardId, String frontText, String backText)? editCard,
  }) {
    return updateCards?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId, bool trainingMode)? load,
    TResult Function()? showAnswer,
    TResult Function(CardRate rate)? rateCard,
    TResult Function()? restorePreviousCard,
    TResult Function(List<CardModel> cards)? updateCards,
    TResult Function(int cardId, String frontText, String backText)? editCard,
    required TResult orElse(),
  }) {
    if (updateCards != null) {
      return updateCards(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyLoad value) load,
    required TResult Function(StudyShowAnswer value) showAnswer,
    required TResult Function(StudyRateCard value) rateCard,
    required TResult Function(StudyRestorePreviousCard value)
        restorePreviousCard,
    required TResult Function(StudyUpdateCards value) updateCards,
    required TResult Function(StudyEditCard value) editCard,
  }) {
    return updateCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyLoad value)? load,
    TResult? Function(StudyShowAnswer value)? showAnswer,
    TResult? Function(StudyRateCard value)? rateCard,
    TResult? Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult? Function(StudyUpdateCards value)? updateCards,
    TResult? Function(StudyEditCard value)? editCard,
  }) {
    return updateCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyLoad value)? load,
    TResult Function(StudyShowAnswer value)? showAnswer,
    TResult Function(StudyRateCard value)? rateCard,
    TResult Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult Function(StudyUpdateCards value)? updateCards,
    TResult Function(StudyEditCard value)? editCard,
    required TResult orElse(),
  }) {
    if (updateCards != null) {
      return updateCards(this);
    }
    return orElse();
  }
}

abstract class StudyUpdateCards implements StudyEvent {
  const factory StudyUpdateCards({required final List<CardModel> cards}) =
      _$StudyUpdateCardsImpl;

  List<CardModel> get cards;

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyUpdateCardsImplCopyWith<_$StudyUpdateCardsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudyEditCardImplCopyWith<$Res> {
  factory _$$StudyEditCardImplCopyWith(
          _$StudyEditCardImpl value, $Res Function(_$StudyEditCardImpl) then) =
      __$$StudyEditCardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cardId, String frontText, String backText});
}

/// @nodoc
class __$$StudyEditCardImplCopyWithImpl<$Res>
    extends _$StudyEventCopyWithImpl<$Res, _$StudyEditCardImpl>
    implements _$$StudyEditCardImplCopyWith<$Res> {
  __$$StudyEditCardImplCopyWithImpl(
      _$StudyEditCardImpl _value, $Res Function(_$StudyEditCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
    Object? frontText = null,
    Object? backText = null,
  }) {
    return _then(_$StudyEditCardImpl(
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

class _$StudyEditCardImpl implements StudyEditCard {
  const _$StudyEditCardImpl(
      {required this.cardId, required this.frontText, required this.backText});

  @override
  final int cardId;
  @override
  final String frontText;
  @override
  final String backText;

  @override
  String toString() {
    return 'StudyEvent.editCard(cardId: $cardId, frontText: $frontText, backText: $backText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyEditCardImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.frontText, frontText) ||
                other.frontText == frontText) &&
            (identical(other.backText, backText) ||
                other.backText == backText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardId, frontText, backText);

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyEditCardImplCopyWith<_$StudyEditCardImpl> get copyWith =>
      __$$StudyEditCardImplCopyWithImpl<_$StudyEditCardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int deckId, bool trainingMode) load,
    required TResult Function() showAnswer,
    required TResult Function(CardRate rate) rateCard,
    required TResult Function() restorePreviousCard,
    required TResult Function(List<CardModel> cards) updateCards,
    required TResult Function(int cardId, String frontText, String backText)
        editCard,
  }) {
    return editCard(cardId, frontText, backText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int deckId, bool trainingMode)? load,
    TResult? Function()? showAnswer,
    TResult? Function(CardRate rate)? rateCard,
    TResult? Function()? restorePreviousCard,
    TResult? Function(List<CardModel> cards)? updateCards,
    TResult? Function(int cardId, String frontText, String backText)? editCard,
  }) {
    return editCard?.call(cardId, frontText, backText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int deckId, bool trainingMode)? load,
    TResult Function()? showAnswer,
    TResult Function(CardRate rate)? rateCard,
    TResult Function()? restorePreviousCard,
    TResult Function(List<CardModel> cards)? updateCards,
    TResult Function(int cardId, String frontText, String backText)? editCard,
    required TResult orElse(),
  }) {
    if (editCard != null) {
      return editCard(cardId, frontText, backText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyLoad value) load,
    required TResult Function(StudyShowAnswer value) showAnswer,
    required TResult Function(StudyRateCard value) rateCard,
    required TResult Function(StudyRestorePreviousCard value)
        restorePreviousCard,
    required TResult Function(StudyUpdateCards value) updateCards,
    required TResult Function(StudyEditCard value) editCard,
  }) {
    return editCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyLoad value)? load,
    TResult? Function(StudyShowAnswer value)? showAnswer,
    TResult? Function(StudyRateCard value)? rateCard,
    TResult? Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult? Function(StudyUpdateCards value)? updateCards,
    TResult? Function(StudyEditCard value)? editCard,
  }) {
    return editCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyLoad value)? load,
    TResult Function(StudyShowAnswer value)? showAnswer,
    TResult Function(StudyRateCard value)? rateCard,
    TResult Function(StudyRestorePreviousCard value)? restorePreviousCard,
    TResult Function(StudyUpdateCards value)? updateCards,
    TResult Function(StudyEditCard value)? editCard,
    required TResult orElse(),
  }) {
    if (editCard != null) {
      return editCard(this);
    }
    return orElse();
  }
}

abstract class StudyEditCard implements StudyEvent {
  const factory StudyEditCard(
      {required final int cardId,
      required final String frontText,
      required final String backText}) = _$StudyEditCardImpl;

  int get cardId;
  String get frontText;
  String get backText;

  /// Create a copy of StudyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyEditCardImplCopyWith<_$StudyEditCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)
        ongoing,
    required TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)
        finished,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult? Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyInitial value) initial,
    required TResult Function(StudyLoading value) loading,
    required TResult Function(StudyOngoing value) ongoing,
    required TResult Function(StudyFinished value) finished,
    required TResult Function(StudyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyInitial value)? initial,
    TResult? Function(StudyLoading value)? loading,
    TResult? Function(StudyOngoing value)? ongoing,
    TResult? Function(StudyFinished value)? finished,
    TResult? Function(StudyError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyInitial value)? initial,
    TResult Function(StudyLoading value)? loading,
    TResult Function(StudyOngoing value)? ongoing,
    TResult Function(StudyFinished value)? finished,
    TResult Function(StudyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyStateCopyWith<$Res> {
  factory $StudyStateCopyWith(
          StudyState value, $Res Function(StudyState) then) =
      _$StudyStateCopyWithImpl<$Res, StudyState>;
}

/// @nodoc
class _$StudyStateCopyWithImpl<$Res, $Val extends StudyState>
    implements $StudyStateCopyWith<$Res> {
  _$StudyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StudyInitialImplCopyWith<$Res> {
  factory _$$StudyInitialImplCopyWith(
          _$StudyInitialImpl value, $Res Function(_$StudyInitialImpl) then) =
      __$$StudyInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudyInitialImplCopyWithImpl<$Res>
    extends _$StudyStateCopyWithImpl<$Res, _$StudyInitialImpl>
    implements _$$StudyInitialImplCopyWith<$Res> {
  __$$StudyInitialImplCopyWithImpl(
      _$StudyInitialImpl _value, $Res Function(_$StudyInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StudyInitialImpl implements StudyInitial {
  const _$StudyInitialImpl();

  @override
  String toString() {
    return 'StudyState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudyInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)
        ongoing,
    required TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)
        finished,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult? Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
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
    required TResult Function(StudyInitial value) initial,
    required TResult Function(StudyLoading value) loading,
    required TResult Function(StudyOngoing value) ongoing,
    required TResult Function(StudyFinished value) finished,
    required TResult Function(StudyError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyInitial value)? initial,
    TResult? Function(StudyLoading value)? loading,
    TResult? Function(StudyOngoing value)? ongoing,
    TResult? Function(StudyFinished value)? finished,
    TResult? Function(StudyError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyInitial value)? initial,
    TResult Function(StudyLoading value)? loading,
    TResult Function(StudyOngoing value)? ongoing,
    TResult Function(StudyFinished value)? finished,
    TResult Function(StudyError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StudyInitial implements StudyState {
  const factory StudyInitial() = _$StudyInitialImpl;
}

/// @nodoc
abstract class _$$StudyLoadingImplCopyWith<$Res> {
  factory _$$StudyLoadingImplCopyWith(
          _$StudyLoadingImpl value, $Res Function(_$StudyLoadingImpl) then) =
      __$$StudyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudyLoadingImplCopyWithImpl<$Res>
    extends _$StudyStateCopyWithImpl<$Res, _$StudyLoadingImpl>
    implements _$$StudyLoadingImplCopyWith<$Res> {
  __$$StudyLoadingImplCopyWithImpl(
      _$StudyLoadingImpl _value, $Res Function(_$StudyLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StudyLoadingImpl implements StudyLoading {
  const _$StudyLoadingImpl();

  @override
  String toString() {
    return 'StudyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)
        ongoing,
    required TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)
        finished,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult? Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
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
    required TResult Function(StudyInitial value) initial,
    required TResult Function(StudyLoading value) loading,
    required TResult Function(StudyOngoing value) ongoing,
    required TResult Function(StudyFinished value) finished,
    required TResult Function(StudyError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyInitial value)? initial,
    TResult? Function(StudyLoading value)? loading,
    TResult? Function(StudyOngoing value)? ongoing,
    TResult? Function(StudyFinished value)? finished,
    TResult? Function(StudyError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyInitial value)? initial,
    TResult Function(StudyLoading value)? loading,
    TResult Function(StudyOngoing value)? ongoing,
    TResult Function(StudyFinished value)? finished,
    TResult Function(StudyError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StudyLoading implements StudyState {
  const factory StudyLoading() = _$StudyLoadingImpl;
}

/// @nodoc
abstract class _$$StudyOngoingImplCopyWith<$Res> {
  factory _$$StudyOngoingImplCopyWith(
          _$StudyOngoingImpl value, $Res Function(_$StudyOngoingImpl) then) =
      __$$StudyOngoingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int deckId,
      List<CardModel> cards,
      bool trainingMode,
      int currentCardIndex,
      bool showAnswer,
      int againCount,
      int hardCount,
      int goodCount});
}

/// @nodoc
class __$$StudyOngoingImplCopyWithImpl<$Res>
    extends _$StudyStateCopyWithImpl<$Res, _$StudyOngoingImpl>
    implements _$$StudyOngoingImplCopyWith<$Res> {
  __$$StudyOngoingImplCopyWithImpl(
      _$StudyOngoingImpl _value, $Res Function(_$StudyOngoingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
    Object? cards = null,
    Object? trainingMode = null,
    Object? currentCardIndex = null,
    Object? showAnswer = null,
    Object? againCount = null,
    Object? hardCount = null,
    Object? goodCount = null,
  }) {
    return _then(_$StudyOngoingImpl(
      deckId: null == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      trainingMode: null == trainingMode
          ? _value.trainingMode
          : trainingMode // ignore: cast_nullable_to_non_nullable
              as bool,
      currentCardIndex: null == currentCardIndex
          ? _value.currentCardIndex
          : currentCardIndex // ignore: cast_nullable_to_non_nullable
              as int,
      showAnswer: null == showAnswer
          ? _value.showAnswer
          : showAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      againCount: null == againCount
          ? _value.againCount
          : againCount // ignore: cast_nullable_to_non_nullable
              as int,
      hardCount: null == hardCount
          ? _value.hardCount
          : hardCount // ignore: cast_nullable_to_non_nullable
              as int,
      goodCount: null == goodCount
          ? _value.goodCount
          : goodCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StudyOngoingImpl implements StudyOngoing {
  const _$StudyOngoingImpl(
      {required this.deckId,
      required final List<CardModel> cards,
      required this.trainingMode,
      this.currentCardIndex = 0,
      this.showAnswer = false,
      this.againCount = 0,
      this.hardCount = 0,
      this.goodCount = 0})
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
  final bool trainingMode;
  @override
  @JsonKey()
  final int currentCardIndex;
  @override
  @JsonKey()
  final bool showAnswer;
  @override
  @JsonKey()
  final int againCount;
  @override
  @JsonKey()
  final int hardCount;
  @override
  @JsonKey()
  final int goodCount;

  @override
  String toString() {
    return 'StudyState.ongoing(deckId: $deckId, cards: $cards, trainingMode: $trainingMode, currentCardIndex: $currentCardIndex, showAnswer: $showAnswer, againCount: $againCount, hardCount: $hardCount, goodCount: $goodCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyOngoingImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.trainingMode, trainingMode) ||
                other.trainingMode == trainingMode) &&
            (identical(other.currentCardIndex, currentCardIndex) ||
                other.currentCardIndex == currentCardIndex) &&
            (identical(other.showAnswer, showAnswer) ||
                other.showAnswer == showAnswer) &&
            (identical(other.againCount, againCount) ||
                other.againCount == againCount) &&
            (identical(other.hardCount, hardCount) ||
                other.hardCount == hardCount) &&
            (identical(other.goodCount, goodCount) ||
                other.goodCount == goodCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      deckId,
      const DeepCollectionEquality().hash(_cards),
      trainingMode,
      currentCardIndex,
      showAnswer,
      againCount,
      hardCount,
      goodCount);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyOngoingImplCopyWith<_$StudyOngoingImpl> get copyWith =>
      __$$StudyOngoingImplCopyWithImpl<_$StudyOngoingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)
        ongoing,
    required TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)
        finished,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return ongoing(deckId, cards, trainingMode, currentCardIndex, showAnswer,
        againCount, hardCount, goodCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult? Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return ongoing?.call(deckId, cards, trainingMode, currentCardIndex,
        showAnswer, againCount, hardCount, goodCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (ongoing != null) {
      return ongoing(deckId, cards, trainingMode, currentCardIndex, showAnswer,
          againCount, hardCount, goodCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyInitial value) initial,
    required TResult Function(StudyLoading value) loading,
    required TResult Function(StudyOngoing value) ongoing,
    required TResult Function(StudyFinished value) finished,
    required TResult Function(StudyError value) error,
  }) {
    return ongoing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyInitial value)? initial,
    TResult? Function(StudyLoading value)? loading,
    TResult? Function(StudyOngoing value)? ongoing,
    TResult? Function(StudyFinished value)? finished,
    TResult? Function(StudyError value)? error,
  }) {
    return ongoing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyInitial value)? initial,
    TResult Function(StudyLoading value)? loading,
    TResult Function(StudyOngoing value)? ongoing,
    TResult Function(StudyFinished value)? finished,
    TResult Function(StudyError value)? error,
    required TResult orElse(),
  }) {
    if (ongoing != null) {
      return ongoing(this);
    }
    return orElse();
  }
}

abstract class StudyOngoing implements StudyState {
  const factory StudyOngoing(
      {required final int deckId,
      required final List<CardModel> cards,
      required final bool trainingMode,
      final int currentCardIndex,
      final bool showAnswer,
      final int againCount,
      final int hardCount,
      final int goodCount}) = _$StudyOngoingImpl;

  int get deckId;
  List<CardModel> get cards;
  bool get trainingMode;
  int get currentCardIndex;
  bool get showAnswer;
  int get againCount;
  int get hardCount;
  int get goodCount;

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyOngoingImplCopyWith<_$StudyOngoingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudyFinishedImplCopyWith<$Res> {
  factory _$$StudyFinishedImplCopyWith(
          _$StudyFinishedImpl value, $Res Function(_$StudyFinishedImpl) then) =
      __$$StudyFinishedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate});
}

/// @nodoc
class __$$StudyFinishedImplCopyWithImpl<$Res>
    extends _$StudyStateCopyWithImpl<$Res, _$StudyFinishedImpl>
    implements _$$StudyFinishedImplCopyWith<$Res> {
  __$$StudyFinishedImplCopyWithImpl(
      _$StudyFinishedImpl _value, $Res Function(_$StudyFinishedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
    Object? rates = null,
    Object? nextRepetitionDate = freezed,
  }) {
    return _then(_$StudyFinishedImpl(
      deckId: null == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<CardRate, int>,
      nextRepetitionDate: freezed == nextRepetitionDate
          ? _value.nextRepetitionDate
          : nextRepetitionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$StudyFinishedImpl implements StudyFinished {
  const _$StudyFinishedImpl(
      {required this.deckId,
      final Map<CardRate, int> rates = const {},
      this.nextRepetitionDate})
      : _rates = rates;

  @override
  final int deckId;
  final Map<CardRate, int> _rates;
  @override
  @JsonKey()
  Map<CardRate, int> get rates {
    if (_rates is EqualUnmodifiableMapView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rates);
  }

  @override
  final DateTime? nextRepetitionDate;

  @override
  String toString() {
    return 'StudyState.finished(deckId: $deckId, rates: $rates, nextRepetitionDate: $nextRepetitionDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyFinishedImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.nextRepetitionDate, nextRepetitionDate) ||
                other.nextRepetitionDate == nextRepetitionDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckId,
      const DeepCollectionEquality().hash(_rates), nextRepetitionDate);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyFinishedImplCopyWith<_$StudyFinishedImpl> get copyWith =>
      __$$StudyFinishedImplCopyWithImpl<_$StudyFinishedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)
        ongoing,
    required TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)
        finished,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return finished(deckId, rates, nextRepetitionDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult? Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return finished?.call(deckId, rates, nextRepetitionDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(deckId, rates, nextRepetitionDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StudyInitial value) initial,
    required TResult Function(StudyLoading value) loading,
    required TResult Function(StudyOngoing value) ongoing,
    required TResult Function(StudyFinished value) finished,
    required TResult Function(StudyError value) error,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyInitial value)? initial,
    TResult? Function(StudyLoading value)? loading,
    TResult? Function(StudyOngoing value)? ongoing,
    TResult? Function(StudyFinished value)? finished,
    TResult? Function(StudyError value)? error,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyInitial value)? initial,
    TResult Function(StudyLoading value)? loading,
    TResult Function(StudyOngoing value)? ongoing,
    TResult Function(StudyFinished value)? finished,
    TResult Function(StudyError value)? error,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class StudyFinished implements StudyState {
  const factory StudyFinished(
      {required final int deckId,
      final Map<CardRate, int> rates,
      final DateTime? nextRepetitionDate}) = _$StudyFinishedImpl;

  int get deckId;
  Map<CardRate, int> get rates;
  DateTime? get nextRepetitionDate;

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyFinishedImplCopyWith<_$StudyFinishedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StudyErrorImplCopyWith<$Res> {
  factory _$$StudyErrorImplCopyWith(
          _$StudyErrorImpl value, $Res Function(_$StudyErrorImpl) then) =
      __$$StudyErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$StudyErrorImplCopyWithImpl<$Res>
    extends _$StudyStateCopyWithImpl<$Res, _$StudyErrorImpl>
    implements _$$StudyErrorImplCopyWith<$Res> {
  __$$StudyErrorImplCopyWithImpl(
      _$StudyErrorImpl _value, $Res Function(_$StudyErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$StudyErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$StudyErrorImpl implements StudyError {
  const _$StudyErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'StudyState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyErrorImplCopyWith<_$StudyErrorImpl> get copyWith =>
      __$$StudyErrorImplCopyWithImpl<_$StudyErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)
        ongoing,
    required TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)
        finished,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult? Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            int deckId,
            List<CardModel> cards,
            bool trainingMode,
            int currentCardIndex,
            bool showAnswer,
            int againCount,
            int hardCount,
            int goodCount)?
        ongoing,
    TResult Function(
            int deckId, Map<CardRate, int> rates, DateTime? nextRepetitionDate)?
        finished,
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
    required TResult Function(StudyInitial value) initial,
    required TResult Function(StudyLoading value) loading,
    required TResult Function(StudyOngoing value) ongoing,
    required TResult Function(StudyFinished value) finished,
    required TResult Function(StudyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StudyInitial value)? initial,
    TResult? Function(StudyLoading value)? loading,
    TResult? Function(StudyOngoing value)? ongoing,
    TResult? Function(StudyFinished value)? finished,
    TResult? Function(StudyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StudyInitial value)? initial,
    TResult Function(StudyLoading value)? loading,
    TResult Function(StudyOngoing value)? ongoing,
    TResult Function(StudyFinished value)? finished,
    TResult Function(StudyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StudyError implements StudyState {
  const factory StudyError(final Object error, final StackTrace stackTrace) =
      _$StudyErrorImpl;

  Object get error;
  StackTrace get stackTrace;

  /// Create a copy of StudyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyErrorImplCopyWith<_$StudyErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
