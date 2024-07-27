// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduling_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchedulingInfoModel {
  int get interval => throw _privateConstructorUsedError;
  int get repetitions => throw _privateConstructorUsedError;
  double get easeFactor => throw _privateConstructorUsedError;
  DateTime? get ratedAt => throw _privateConstructorUsedError;
  DateTime? get nextRepetitionAt => throw _privateConstructorUsedError;
  CardStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of SchedulingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchedulingInfoModelCopyWith<SchedulingInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulingInfoModelCopyWith<$Res> {
  factory $SchedulingInfoModelCopyWith(
          SchedulingInfoModel value, $Res Function(SchedulingInfoModel) then) =
      _$SchedulingInfoModelCopyWithImpl<$Res, SchedulingInfoModel>;
  @useResult
  $Res call(
      {int interval,
      int repetitions,
      double easeFactor,
      DateTime? ratedAt,
      DateTime? nextRepetitionAt,
      CardStatus status});
}

/// @nodoc
class _$SchedulingInfoModelCopyWithImpl<$Res, $Val extends SchedulingInfoModel>
    implements $SchedulingInfoModelCopyWith<$Res> {
  _$SchedulingInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
    Object? repetitions = null,
    Object? easeFactor = null,
    Object? ratedAt = freezed,
    Object? nextRepetitionAt = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      repetitions: null == repetitions
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      ratedAt: freezed == ratedAt
          ? _value.ratedAt
          : ratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextRepetitionAt: freezed == nextRepetitionAt
          ? _value.nextRepetitionAt
          : nextRepetitionAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchedulingInfoModelImplCopyWith<$Res>
    implements $SchedulingInfoModelCopyWith<$Res> {
  factory _$$SchedulingInfoModelImplCopyWith(_$SchedulingInfoModelImpl value,
          $Res Function(_$SchedulingInfoModelImpl) then) =
      __$$SchedulingInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int interval,
      int repetitions,
      double easeFactor,
      DateTime? ratedAt,
      DateTime? nextRepetitionAt,
      CardStatus status});
}

/// @nodoc
class __$$SchedulingInfoModelImplCopyWithImpl<$Res>
    extends _$SchedulingInfoModelCopyWithImpl<$Res, _$SchedulingInfoModelImpl>
    implements _$$SchedulingInfoModelImplCopyWith<$Res> {
  __$$SchedulingInfoModelImplCopyWithImpl(_$SchedulingInfoModelImpl _value,
      $Res Function(_$SchedulingInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
    Object? repetitions = null,
    Object? easeFactor = null,
    Object? ratedAt = freezed,
    Object? nextRepetitionAt = freezed,
    Object? status = null,
  }) {
    return _then(_$SchedulingInfoModelImpl(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as int,
      repetitions: null == repetitions
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      easeFactor: null == easeFactor
          ? _value.easeFactor
          : easeFactor // ignore: cast_nullable_to_non_nullable
              as double,
      ratedAt: freezed == ratedAt
          ? _value.ratedAt
          : ratedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextRepetitionAt: freezed == nextRepetitionAt
          ? _value.nextRepetitionAt
          : nextRepetitionAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardStatus,
    ));
  }
}

/// @nodoc

class _$SchedulingInfoModelImpl implements _SchedulingInfoModel {
  const _$SchedulingInfoModelImpl(
      {required this.interval,
      required this.repetitions,
      required this.easeFactor,
      required this.ratedAt,
      required this.nextRepetitionAt,
      required this.status});

  @override
  final int interval;
  @override
  final int repetitions;
  @override
  final double easeFactor;
  @override
  final DateTime? ratedAt;
  @override
  final DateTime? nextRepetitionAt;
  @override
  final CardStatus status;

  @override
  String toString() {
    return 'SchedulingInfoModel(interval: $interval, repetitions: $repetitions, easeFactor: $easeFactor, ratedAt: $ratedAt, nextRepetitionAt: $nextRepetitionAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchedulingInfoModelImpl &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.repetitions, repetitions) ||
                other.repetitions == repetitions) &&
            (identical(other.easeFactor, easeFactor) ||
                other.easeFactor == easeFactor) &&
            (identical(other.ratedAt, ratedAt) || other.ratedAt == ratedAt) &&
            (identical(other.nextRepetitionAt, nextRepetitionAt) ||
                other.nextRepetitionAt == nextRepetitionAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interval, repetitions,
      easeFactor, ratedAt, nextRepetitionAt, status);

  /// Create a copy of SchedulingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchedulingInfoModelImplCopyWith<_$SchedulingInfoModelImpl> get copyWith =>
      __$$SchedulingInfoModelImplCopyWithImpl<_$SchedulingInfoModelImpl>(
          this, _$identity);
}

abstract class _SchedulingInfoModel implements SchedulingInfoModel {
  const factory _SchedulingInfoModel(
      {required final int interval,
      required final int repetitions,
      required final double easeFactor,
      required final DateTime? ratedAt,
      required final DateTime? nextRepetitionAt,
      required final CardStatus status}) = _$SchedulingInfoModelImpl;

  @override
  int get interval;
  @override
  int get repetitions;
  @override
  double get easeFactor;
  @override
  DateTime? get ratedAt;
  @override
  DateTime? get nextRepetitionAt;
  @override
  CardStatus get status;

  /// Create a copy of SchedulingInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchedulingInfoModelImplCopyWith<_$SchedulingInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
