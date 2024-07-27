// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatisticsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? deckId) load,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? deckId)? load,
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? deckId)? load,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticsLoad value) load,
    required TResult Function(StatisticsUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsLoad value)? load,
    TResult? Function(StatisticsUpdate value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsLoad value)? load,
    TResult Function(StatisticsUpdate value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsEventCopyWith<$Res> {
  factory $StatisticsEventCopyWith(
          StatisticsEvent value, $Res Function(StatisticsEvent) then) =
      _$StatisticsEventCopyWithImpl<$Res, StatisticsEvent>;
}

/// @nodoc
class _$StatisticsEventCopyWithImpl<$Res, $Val extends StatisticsEvent>
    implements $StatisticsEventCopyWith<$Res> {
  _$StatisticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatisticsLoadImplCopyWith<$Res> {
  factory _$$StatisticsLoadImplCopyWith(_$StatisticsLoadImpl value,
          $Res Function(_$StatisticsLoadImpl) then) =
      __$$StatisticsLoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? deckId});
}

/// @nodoc
class __$$StatisticsLoadImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$StatisticsLoadImpl>
    implements _$$StatisticsLoadImplCopyWith<$Res> {
  __$$StatisticsLoadImplCopyWithImpl(
      _$StatisticsLoadImpl _value, $Res Function(_$StatisticsLoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = freezed,
  }) {
    return _then(_$StatisticsLoadImpl(
      deckId: freezed == deckId
          ? _value.deckId
          : deckId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$StatisticsLoadImpl implements StatisticsLoad {
  const _$StatisticsLoadImpl({this.deckId});

  @override
  final int? deckId;

  @override
  String toString() {
    return 'StatisticsEvent.load(deckId: $deckId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsLoadImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deckId);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsLoadImplCopyWith<_$StatisticsLoadImpl> get copyWith =>
      __$$StatisticsLoadImplCopyWithImpl<_$StatisticsLoadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? deckId) load,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
        update,
  }) {
    return load(deckId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? deckId)? load,
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        update,
  }) {
    return load?.call(deckId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? deckId)? load,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        update,
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
    required TResult Function(StatisticsLoad value) load,
    required TResult Function(StatisticsUpdate value) update,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsLoad value)? load,
    TResult? Function(StatisticsUpdate value)? update,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsLoad value)? load,
    TResult Function(StatisticsUpdate value)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class StatisticsLoad implements StatisticsEvent {
  const factory StatisticsLoad({final int? deckId}) = _$StatisticsLoadImpl;

  int? get deckId;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsLoadImplCopyWith<_$StatisticsLoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatisticsUpdateImplCopyWith<$Res> {
  factory _$$StatisticsUpdateImplCopyWith(_$StatisticsUpdateImpl value,
          $Res Function(_$StatisticsUpdateImpl) then) =
      __$$StatisticsUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CardRatesSummaryModel? cardRatesSummary,
      CardStatusCountModel? cardStatusCount});

  $CardRatesSummaryModelCopyWith<$Res>? get cardRatesSummary;
  $CardStatusCountModelCopyWith<$Res>? get cardStatusCount;
}

/// @nodoc
class __$$StatisticsUpdateImplCopyWithImpl<$Res>
    extends _$StatisticsEventCopyWithImpl<$Res, _$StatisticsUpdateImpl>
    implements _$$StatisticsUpdateImplCopyWith<$Res> {
  __$$StatisticsUpdateImplCopyWithImpl(_$StatisticsUpdateImpl _value,
      $Res Function(_$StatisticsUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardRatesSummary = freezed,
    Object? cardStatusCount = freezed,
  }) {
    return _then(_$StatisticsUpdateImpl(
      cardRatesSummary: freezed == cardRatesSummary
          ? _value.cardRatesSummary
          : cardRatesSummary // ignore: cast_nullable_to_non_nullable
              as CardRatesSummaryModel?,
      cardStatusCount: freezed == cardStatusCount
          ? _value.cardStatusCount
          : cardStatusCount // ignore: cast_nullable_to_non_nullable
              as CardStatusCountModel?,
    ));
  }

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardRatesSummaryModelCopyWith<$Res>? get cardRatesSummary {
    if (_value.cardRatesSummary == null) {
      return null;
    }

    return $CardRatesSummaryModelCopyWith<$Res>(_value.cardRatesSummary!,
        (value) {
      return _then(_value.copyWith(cardRatesSummary: value));
    });
  }

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardStatusCountModelCopyWith<$Res>? get cardStatusCount {
    if (_value.cardStatusCount == null) {
      return null;
    }

    return $CardStatusCountModelCopyWith<$Res>(_value.cardStatusCount!,
        (value) {
      return _then(_value.copyWith(cardStatusCount: value));
    });
  }
}

/// @nodoc

class _$StatisticsUpdateImpl implements StatisticsUpdate {
  const _$StatisticsUpdateImpl({this.cardRatesSummary, this.cardStatusCount});

  @override
  final CardRatesSummaryModel? cardRatesSummary;
  @override
  final CardStatusCountModel? cardStatusCount;

  @override
  String toString() {
    return 'StatisticsEvent.update(cardRatesSummary: $cardRatesSummary, cardStatusCount: $cardStatusCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsUpdateImpl &&
            (identical(other.cardRatesSummary, cardRatesSummary) ||
                other.cardRatesSummary == cardRatesSummary) &&
            (identical(other.cardStatusCount, cardStatusCount) ||
                other.cardStatusCount == cardStatusCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cardRatesSummary, cardStatusCount);

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsUpdateImplCopyWith<_$StatisticsUpdateImpl> get copyWith =>
      __$$StatisticsUpdateImplCopyWithImpl<_$StatisticsUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? deckId) load,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
        update,
  }) {
    return update(cardRatesSummary, cardStatusCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? deckId)? load,
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        update,
  }) {
    return update?.call(cardRatesSummary, cardStatusCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? deckId)? load,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(cardRatesSummary, cardStatusCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticsLoad value) load,
    required TResult Function(StatisticsUpdate value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsLoad value)? load,
    TResult? Function(StatisticsUpdate value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsLoad value)? load,
    TResult Function(StatisticsUpdate value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class StatisticsUpdate implements StatisticsEvent {
  const factory StatisticsUpdate(
      {final CardRatesSummaryModel? cardRatesSummary,
      final CardStatusCountModel? cardStatusCount}) = _$StatisticsUpdateImpl;

  CardRatesSummaryModel? get cardRatesSummary;
  CardStatusCountModel? get cardStatusCount;

  /// Create a copy of StatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsUpdateImplCopyWith<_$StatisticsUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatisticsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
        loaded,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoaded value) loaded,
    required TResult Function(StatisticsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoaded value)? loaded,
    TResult? Function(StatisticsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoaded value)? loaded,
    TResult Function(StatisticsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsStateCopyWith<$Res> {
  factory $StatisticsStateCopyWith(
          StatisticsState value, $Res Function(StatisticsState) then) =
      _$StatisticsStateCopyWithImpl<$Res, StatisticsState>;
}

/// @nodoc
class _$StatisticsStateCopyWithImpl<$Res, $Val extends StatisticsState>
    implements $StatisticsStateCopyWith<$Res> {
  _$StatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatisticsInitialImplCopyWith<$Res> {
  factory _$$StatisticsInitialImplCopyWith(_$StatisticsInitialImpl value,
          $Res Function(_$StatisticsInitialImpl) then) =
      __$$StatisticsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatisticsInitialImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsInitialImpl>
    implements _$$StatisticsInitialImplCopyWith<$Res> {
  __$$StatisticsInitialImplCopyWithImpl(_$StatisticsInitialImpl _value,
      $Res Function(_$StatisticsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatisticsInitialImpl implements StatisticsInitial {
  const _$StatisticsInitialImpl();

  @override
  String toString() {
    return 'StatisticsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatisticsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
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
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
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
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoaded value) loaded,
    required TResult Function(StatisticsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoaded value)? loaded,
    TResult? Function(StatisticsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoaded value)? loaded,
    TResult Function(StatisticsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatisticsInitial implements StatisticsState {
  const factory StatisticsInitial() = _$StatisticsInitialImpl;
}

/// @nodoc
abstract class _$$StatisticsLoadingImplCopyWith<$Res> {
  factory _$$StatisticsLoadingImplCopyWith(_$StatisticsLoadingImpl value,
          $Res Function(_$StatisticsLoadingImpl) then) =
      __$$StatisticsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StatisticsLoadingImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsLoadingImpl>
    implements _$$StatisticsLoadingImplCopyWith<$Res> {
  __$$StatisticsLoadingImplCopyWithImpl(_$StatisticsLoadingImpl _value,
      $Res Function(_$StatisticsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatisticsLoadingImpl implements StatisticsLoading {
  const _$StatisticsLoadingImpl();

  @override
  String toString() {
    return 'StatisticsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatisticsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
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
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
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
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoaded value) loaded,
    required TResult Function(StatisticsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoaded value)? loaded,
    TResult? Function(StatisticsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoaded value)? loaded,
    TResult Function(StatisticsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatisticsLoading implements StatisticsState {
  const factory StatisticsLoading() = _$StatisticsLoadingImpl;
}

/// @nodoc
abstract class _$$StatisticsLoadedImplCopyWith<$Res> {
  factory _$$StatisticsLoadedImplCopyWith(_$StatisticsLoadedImpl value,
          $Res Function(_$StatisticsLoadedImpl) then) =
      __$$StatisticsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CardRatesSummaryModel? cardRatesSummary,
      CardStatusCountModel? cardStatusCount});

  $CardRatesSummaryModelCopyWith<$Res>? get cardRatesSummary;
  $CardStatusCountModelCopyWith<$Res>? get cardStatusCount;
}

/// @nodoc
class __$$StatisticsLoadedImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsLoadedImpl>
    implements _$$StatisticsLoadedImplCopyWith<$Res> {
  __$$StatisticsLoadedImplCopyWithImpl(_$StatisticsLoadedImpl _value,
      $Res Function(_$StatisticsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardRatesSummary = freezed,
    Object? cardStatusCount = freezed,
  }) {
    return _then(_$StatisticsLoadedImpl(
      cardRatesSummary: freezed == cardRatesSummary
          ? _value.cardRatesSummary
          : cardRatesSummary // ignore: cast_nullable_to_non_nullable
              as CardRatesSummaryModel?,
      cardStatusCount: freezed == cardStatusCount
          ? _value.cardStatusCount
          : cardStatusCount // ignore: cast_nullable_to_non_nullable
              as CardStatusCountModel?,
    ));
  }

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardRatesSummaryModelCopyWith<$Res>? get cardRatesSummary {
    if (_value.cardRatesSummary == null) {
      return null;
    }

    return $CardRatesSummaryModelCopyWith<$Res>(_value.cardRatesSummary!,
        (value) {
      return _then(_value.copyWith(cardRatesSummary: value));
    });
  }

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardStatusCountModelCopyWith<$Res>? get cardStatusCount {
    if (_value.cardStatusCount == null) {
      return null;
    }

    return $CardStatusCountModelCopyWith<$Res>(_value.cardStatusCount!,
        (value) {
      return _then(_value.copyWith(cardStatusCount: value));
    });
  }
}

/// @nodoc

class _$StatisticsLoadedImpl implements StatisticsLoaded {
  const _$StatisticsLoadedImpl(
      {required this.cardRatesSummary, required this.cardStatusCount});

  @override
  final CardRatesSummaryModel? cardRatesSummary;
  @override
  final CardStatusCountModel? cardStatusCount;

  @override
  String toString() {
    return 'StatisticsState.loaded(cardRatesSummary: $cardRatesSummary, cardStatusCount: $cardStatusCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsLoadedImpl &&
            (identical(other.cardRatesSummary, cardRatesSummary) ||
                other.cardRatesSummary == cardRatesSummary) &&
            (identical(other.cardStatusCount, cardStatusCount) ||
                other.cardStatusCount == cardStatusCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cardRatesSummary, cardStatusCount);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsLoadedImplCopyWith<_$StatisticsLoadedImpl> get copyWith =>
      __$$StatisticsLoadedImplCopyWithImpl<_$StatisticsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
        loaded,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return loaded(cardRatesSummary, cardStatusCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return loaded?.call(cardRatesSummary, cardStatusCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cardRatesSummary, cardStatusCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoaded value) loaded,
    required TResult Function(StatisticsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoaded value)? loaded,
    TResult? Function(StatisticsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoaded value)? loaded,
    TResult Function(StatisticsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StatisticsLoaded implements StatisticsState {
  const factory StatisticsLoaded(
          {required final CardRatesSummaryModel? cardRatesSummary,
          required final CardStatusCountModel? cardStatusCount}) =
      _$StatisticsLoadedImpl;

  CardRatesSummaryModel? get cardRatesSummary;
  CardStatusCountModel? get cardStatusCount;

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsLoadedImplCopyWith<_$StatisticsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatisticsErrorImplCopyWith<$Res> {
  factory _$$StatisticsErrorImplCopyWith(_$StatisticsErrorImpl value,
          $Res Function(_$StatisticsErrorImpl) then) =
      __$$StatisticsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$StatisticsErrorImplCopyWithImpl<$Res>
    extends _$StatisticsStateCopyWithImpl<$Res, _$StatisticsErrorImpl>
    implements _$$StatisticsErrorImplCopyWith<$Res> {
  __$$StatisticsErrorImplCopyWithImpl(
      _$StatisticsErrorImpl _value, $Res Function(_$StatisticsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$StatisticsErrorImpl(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$StatisticsErrorImpl implements StatisticsError {
  const _$StatisticsErrorImpl({required this.error, required this.stackTrace});

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'StatisticsState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsErrorImplCopyWith<_$StatisticsErrorImpl> get copyWith =>
      __$$StatisticsErrorImplCopyWithImpl<_$StatisticsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)
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
    TResult? Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CardRatesSummaryModel? cardRatesSummary,
            CardStatusCountModel? cardStatusCount)?
        loaded,
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
    required TResult Function(StatisticsInitial value) initial,
    required TResult Function(StatisticsLoading value) loading,
    required TResult Function(StatisticsLoaded value) loaded,
    required TResult Function(StatisticsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatisticsInitial value)? initial,
    TResult? Function(StatisticsLoading value)? loading,
    TResult? Function(StatisticsLoaded value)? loaded,
    TResult? Function(StatisticsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatisticsInitial value)? initial,
    TResult Function(StatisticsLoading value)? loading,
    TResult Function(StatisticsLoaded value)? loaded,
    TResult Function(StatisticsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StatisticsError implements StatisticsState {
  const factory StatisticsError(
      {required final Object error,
      required final StackTrace stackTrace}) = _$StatisticsErrorImpl;

  Object get error;
  StackTrace get stackTrace;

  /// Create a copy of StatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsErrorImplCopyWith<_$StatisticsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
