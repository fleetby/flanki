// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_item_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardItemVm {
  int get id => throw _privateConstructorUsedError;
  String get frontPlainText => throw _privateConstructorUsedError;
  String get backPlainText => throw _privateConstructorUsedError;
  SchedulingInfoModel? get schedulingInfo => throw _privateConstructorUsedError;

  /// Create a copy of CardItemVm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardItemVmCopyWith<CardItemVm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardItemVmCopyWith<$Res> {
  factory $CardItemVmCopyWith(
          CardItemVm value, $Res Function(CardItemVm) then) =
      _$CardItemVmCopyWithImpl<$Res, CardItemVm>;
  @useResult
  $Res call(
      {int id,
      String frontPlainText,
      String backPlainText,
      SchedulingInfoModel? schedulingInfo});

  $SchedulingInfoModelCopyWith<$Res>? get schedulingInfo;
}

/// @nodoc
class _$CardItemVmCopyWithImpl<$Res, $Val extends CardItemVm>
    implements $CardItemVmCopyWith<$Res> {
  _$CardItemVmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardItemVm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontPlainText = null,
    Object? backPlainText = null,
    Object? schedulingInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      frontPlainText: null == frontPlainText
          ? _value.frontPlainText
          : frontPlainText // ignore: cast_nullable_to_non_nullable
              as String,
      backPlainText: null == backPlainText
          ? _value.backPlainText
          : backPlainText // ignore: cast_nullable_to_non_nullable
              as String,
      schedulingInfo: freezed == schedulingInfo
          ? _value.schedulingInfo
          : schedulingInfo // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
    ) as $Val);
  }

  /// Create a copy of CardItemVm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchedulingInfoModelCopyWith<$Res>? get schedulingInfo {
    if (_value.schedulingInfo == null) {
      return null;
    }

    return $SchedulingInfoModelCopyWith<$Res>(_value.schedulingInfo!, (value) {
      return _then(_value.copyWith(schedulingInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardItemVmImplCopyWith<$Res>
    implements $CardItemVmCopyWith<$Res> {
  factory _$$CardItemVmImplCopyWith(
          _$CardItemVmImpl value, $Res Function(_$CardItemVmImpl) then) =
      __$$CardItemVmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String frontPlainText,
      String backPlainText,
      SchedulingInfoModel? schedulingInfo});

  @override
  $SchedulingInfoModelCopyWith<$Res>? get schedulingInfo;
}

/// @nodoc
class __$$CardItemVmImplCopyWithImpl<$Res>
    extends _$CardItemVmCopyWithImpl<$Res, _$CardItemVmImpl>
    implements _$$CardItemVmImplCopyWith<$Res> {
  __$$CardItemVmImplCopyWithImpl(
      _$CardItemVmImpl _value, $Res Function(_$CardItemVmImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardItemVm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontPlainText = null,
    Object? backPlainText = null,
    Object? schedulingInfo = freezed,
  }) {
    return _then(_$CardItemVmImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      frontPlainText: null == frontPlainText
          ? _value.frontPlainText
          : frontPlainText // ignore: cast_nullable_to_non_nullable
              as String,
      backPlainText: null == backPlainText
          ? _value.backPlainText
          : backPlainText // ignore: cast_nullable_to_non_nullable
              as String,
      schedulingInfo: freezed == schedulingInfo
          ? _value.schedulingInfo
          : schedulingInfo // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
    ));
  }
}

/// @nodoc

class _$CardItemVmImpl implements _CardItemVm {
  const _$CardItemVmImpl(
      {required this.id,
      required this.frontPlainText,
      required this.backPlainText,
      required this.schedulingInfo});

  @override
  final int id;
  @override
  final String frontPlainText;
  @override
  final String backPlainText;
  @override
  final SchedulingInfoModel? schedulingInfo;

  @override
  String toString() {
    return 'CardItemVm(id: $id, frontPlainText: $frontPlainText, backPlainText: $backPlainText, schedulingInfo: $schedulingInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardItemVmImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frontPlainText, frontPlainText) ||
                other.frontPlainText == frontPlainText) &&
            (identical(other.backPlainText, backPlainText) ||
                other.backPlainText == backPlainText) &&
            (identical(other.schedulingInfo, schedulingInfo) ||
                other.schedulingInfo == schedulingInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, frontPlainText, backPlainText, schedulingInfo);

  /// Create a copy of CardItemVm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardItemVmImplCopyWith<_$CardItemVmImpl> get copyWith =>
      __$$CardItemVmImplCopyWithImpl<_$CardItemVmImpl>(this, _$identity);
}

abstract class _CardItemVm implements CardItemVm {
  const factory _CardItemVm(
      {required final int id,
      required final String frontPlainText,
      required final String backPlainText,
      required final SchedulingInfoModel? schedulingInfo}) = _$CardItemVmImpl;

  @override
  int get id;
  @override
  String get frontPlainText;
  @override
  String get backPlainText;
  @override
  SchedulingInfoModel? get schedulingInfo;

  /// Create a copy of CardItemVm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardItemVmImplCopyWith<_$CardItemVmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
