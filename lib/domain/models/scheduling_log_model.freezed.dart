// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduling_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SchedulingLogModel {
  int get id => throw _privateConstructorUsedError;
  int get cardId => throw _privateConstructorUsedError;
  SchedulingInfoModel? get old => throw _privateConstructorUsedError;
  SchedulingInfoModel? get new_ => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  CardRate? get rate => throw _privateConstructorUsedError;

  /// Create a copy of SchedulingLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchedulingLogModelCopyWith<SchedulingLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulingLogModelCopyWith<$Res> {
  factory $SchedulingLogModelCopyWith(
          SchedulingLogModel value, $Res Function(SchedulingLogModel) then) =
      _$SchedulingLogModelCopyWithImpl<$Res, SchedulingLogModel>;
  @useResult
  $Res call(
      {int id,
      int cardId,
      SchedulingInfoModel? old,
      SchedulingInfoModel? new_,
      DateTime? dateTime,
      CardRate? rate});

  $SchedulingInfoModelCopyWith<$Res>? get old;
  $SchedulingInfoModelCopyWith<$Res>? get new_;
}

/// @nodoc
class _$SchedulingLogModelCopyWithImpl<$Res, $Val extends SchedulingLogModel>
    implements $SchedulingLogModelCopyWith<$Res> {
  _$SchedulingLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchedulingLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardId = null,
    Object? old = freezed,
    Object? new_ = freezed,
    Object? dateTime = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      old: freezed == old
          ? _value.old
          : old // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
      new_: freezed == new_
          ? _value.new_
          : new_ // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as CardRate?,
    ) as $Val);
  }

  /// Create a copy of SchedulingLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchedulingInfoModelCopyWith<$Res>? get old {
    if (_value.old == null) {
      return null;
    }

    return $SchedulingInfoModelCopyWith<$Res>(_value.old!, (value) {
      return _then(_value.copyWith(old: value) as $Val);
    });
  }

  /// Create a copy of SchedulingLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchedulingInfoModelCopyWith<$Res>? get new_ {
    if (_value.new_ == null) {
      return null;
    }

    return $SchedulingInfoModelCopyWith<$Res>(_value.new_!, (value) {
      return _then(_value.copyWith(new_: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchedulingLogModelImplCopyWith<$Res>
    implements $SchedulingLogModelCopyWith<$Res> {
  factory _$$SchedulingLogModelImplCopyWith(_$SchedulingLogModelImpl value,
          $Res Function(_$SchedulingLogModelImpl) then) =
      __$$SchedulingLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int cardId,
      SchedulingInfoModel? old,
      SchedulingInfoModel? new_,
      DateTime? dateTime,
      CardRate? rate});

  @override
  $SchedulingInfoModelCopyWith<$Res>? get old;
  @override
  $SchedulingInfoModelCopyWith<$Res>? get new_;
}

/// @nodoc
class __$$SchedulingLogModelImplCopyWithImpl<$Res>
    extends _$SchedulingLogModelCopyWithImpl<$Res, _$SchedulingLogModelImpl>
    implements _$$SchedulingLogModelImplCopyWith<$Res> {
  __$$SchedulingLogModelImplCopyWithImpl(_$SchedulingLogModelImpl _value,
      $Res Function(_$SchedulingLogModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchedulingLogModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardId = null,
    Object? old = freezed,
    Object? new_ = freezed,
    Object? dateTime = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$SchedulingLogModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cardId: null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as int,
      old: freezed == old
          ? _value.old
          : old // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
      new_: freezed == new_
          ? _value.new_
          : new_ // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as CardRate?,
    ));
  }
}

/// @nodoc

class _$SchedulingLogModelImpl implements _SchedulingLogModel {
  const _$SchedulingLogModelImpl(
      {required this.id,
      required this.cardId,
      required this.old,
      required this.new_,
      required this.dateTime,
      required this.rate});

  @override
  final int id;
  @override
  final int cardId;
  @override
  final SchedulingInfoModel? old;
  @override
  final SchedulingInfoModel? new_;
  @override
  final DateTime? dateTime;
  @override
  final CardRate? rate;

  @override
  String toString() {
    return 'SchedulingLogModel(id: $id, cardId: $cardId, old: $old, new_: $new_, dateTime: $dateTime, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchedulingLogModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.old, old) || other.old == old) &&
            (identical(other.new_, new_) || other.new_ == new_) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, cardId, old, new_, dateTime, rate);

  /// Create a copy of SchedulingLogModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchedulingLogModelImplCopyWith<_$SchedulingLogModelImpl> get copyWith =>
      __$$SchedulingLogModelImplCopyWithImpl<_$SchedulingLogModelImpl>(
          this, _$identity);
}

abstract class _SchedulingLogModel implements SchedulingLogModel {
  const factory _SchedulingLogModel(
      {required final int id,
      required final int cardId,
      required final SchedulingInfoModel? old,
      required final SchedulingInfoModel? new_,
      required final DateTime? dateTime,
      required final CardRate? rate}) = _$SchedulingLogModelImpl;

  @override
  int get id;
  @override
  int get cardId;
  @override
  SchedulingInfoModel? get old;
  @override
  SchedulingInfoModel? get new_;
  @override
  DateTime? get dateTime;
  @override
  CardRate? get rate;

  /// Create a copy of SchedulingLogModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchedulingLogModelImplCopyWith<_$SchedulingLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
