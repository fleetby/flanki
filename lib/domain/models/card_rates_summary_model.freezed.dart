// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_rates_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardRatesSummaryModel {
  int get againCount => throw _privateConstructorUsedError;
  int get hardCount => throw _privateConstructorUsedError;
  int get goodCount => throw _privateConstructorUsedError;

  /// Create a copy of CardRatesSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardRatesSummaryModelCopyWith<CardRatesSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardRatesSummaryModelCopyWith<$Res> {
  factory $CardRatesSummaryModelCopyWith(CardRatesSummaryModel value,
          $Res Function(CardRatesSummaryModel) then) =
      _$CardRatesSummaryModelCopyWithImpl<$Res, CardRatesSummaryModel>;
  @useResult
  $Res call({int againCount, int hardCount, int goodCount});
}

/// @nodoc
class _$CardRatesSummaryModelCopyWithImpl<$Res,
        $Val extends CardRatesSummaryModel>
    implements $CardRatesSummaryModelCopyWith<$Res> {
  _$CardRatesSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardRatesSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? againCount = null,
    Object? hardCount = null,
    Object? goodCount = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardRatesSummaryModelImplCopyWith<$Res>
    implements $CardRatesSummaryModelCopyWith<$Res> {
  factory _$$CardRatesSummaryModelImplCopyWith(
          _$CardRatesSummaryModelImpl value,
          $Res Function(_$CardRatesSummaryModelImpl) then) =
      __$$CardRatesSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int againCount, int hardCount, int goodCount});
}

/// @nodoc
class __$$CardRatesSummaryModelImplCopyWithImpl<$Res>
    extends _$CardRatesSummaryModelCopyWithImpl<$Res,
        _$CardRatesSummaryModelImpl>
    implements _$$CardRatesSummaryModelImplCopyWith<$Res> {
  __$$CardRatesSummaryModelImplCopyWithImpl(_$CardRatesSummaryModelImpl _value,
      $Res Function(_$CardRatesSummaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardRatesSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? againCount = null,
    Object? hardCount = null,
    Object? goodCount = null,
  }) {
    return _then(_$CardRatesSummaryModelImpl(
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

class _$CardRatesSummaryModelImpl implements _CardRatesSummaryModel {
  const _$CardRatesSummaryModelImpl(
      {required this.againCount,
      required this.hardCount,
      required this.goodCount});

  @override
  final int againCount;
  @override
  final int hardCount;
  @override
  final int goodCount;

  @override
  String toString() {
    return 'CardRatesSummaryModel(againCount: $againCount, hardCount: $hardCount, goodCount: $goodCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardRatesSummaryModelImpl &&
            (identical(other.againCount, againCount) ||
                other.againCount == againCount) &&
            (identical(other.hardCount, hardCount) ||
                other.hardCount == hardCount) &&
            (identical(other.goodCount, goodCount) ||
                other.goodCount == goodCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, againCount, hardCount, goodCount);

  /// Create a copy of CardRatesSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardRatesSummaryModelImplCopyWith<_$CardRatesSummaryModelImpl>
      get copyWith => __$$CardRatesSummaryModelImplCopyWithImpl<
          _$CardRatesSummaryModelImpl>(this, _$identity);
}

abstract class _CardRatesSummaryModel implements CardRatesSummaryModel {
  const factory _CardRatesSummaryModel(
      {required final int againCount,
      required final int hardCount,
      required final int goodCount}) = _$CardRatesSummaryModelImpl;

  @override
  int get againCount;
  @override
  int get hardCount;
  @override
  int get goodCount;

  /// Create a copy of CardRatesSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardRatesSummaryModelImplCopyWith<_$CardRatesSummaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
