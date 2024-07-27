// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardModel {
  int get id => throw _privateConstructorUsedError;
  NoteModel get frontNote => throw _privateConstructorUsedError;
  NoteModel get backNote => throw _privateConstructorUsedError;
  SchedulingInfoModel? get schedulingInfo => throw _privateConstructorUsedError;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {int id,
      NoteModel frontNote,
      NoteModel backNote,
      SchedulingInfoModel? schedulingInfo});

  $NoteModelCopyWith<$Res> get frontNote;
  $NoteModelCopyWith<$Res> get backNote;
  $SchedulingInfoModelCopyWith<$Res>? get schedulingInfo;
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontNote = null,
    Object? backNote = null,
    Object? schedulingInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      frontNote: null == frontNote
          ? _value.frontNote
          : frontNote // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      backNote: null == backNote
          ? _value.backNote
          : backNote // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      schedulingInfo: freezed == schedulingInfo
          ? _value.schedulingInfo
          : schedulingInfo // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
    ) as $Val);
  }

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteModelCopyWith<$Res> get frontNote {
    return $NoteModelCopyWith<$Res>(_value.frontNote, (value) {
      return _then(_value.copyWith(frontNote: value) as $Val);
    });
  }

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteModelCopyWith<$Res> get backNote {
    return $NoteModelCopyWith<$Res>(_value.backNote, (value) {
      return _then(_value.copyWith(backNote: value) as $Val);
    });
  }

  /// Create a copy of CardModel
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
abstract class _$$CardModelImplCopyWith<$Res>
    implements $CardModelCopyWith<$Res> {
  factory _$$CardModelImplCopyWith(
          _$CardModelImpl value, $Res Function(_$CardModelImpl) then) =
      __$$CardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      NoteModel frontNote,
      NoteModel backNote,
      SchedulingInfoModel? schedulingInfo});

  @override
  $NoteModelCopyWith<$Res> get frontNote;
  @override
  $NoteModelCopyWith<$Res> get backNote;
  @override
  $SchedulingInfoModelCopyWith<$Res>? get schedulingInfo;
}

/// @nodoc
class __$$CardModelImplCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$CardModelImpl>
    implements _$$CardModelImplCopyWith<$Res> {
  __$$CardModelImplCopyWithImpl(
      _$CardModelImpl _value, $Res Function(_$CardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? frontNote = null,
    Object? backNote = null,
    Object? schedulingInfo = freezed,
  }) {
    return _then(_$CardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      frontNote: null == frontNote
          ? _value.frontNote
          : frontNote // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      backNote: null == backNote
          ? _value.backNote
          : backNote // ignore: cast_nullable_to_non_nullable
              as NoteModel,
      schedulingInfo: freezed == schedulingInfo
          ? _value.schedulingInfo
          : schedulingInfo // ignore: cast_nullable_to_non_nullable
              as SchedulingInfoModel?,
    ));
  }
}

/// @nodoc

class _$CardModelImpl implements _CardModel {
  const _$CardModelImpl(
      {required this.id,
      required this.frontNote,
      required this.backNote,
      required this.schedulingInfo});

  @override
  final int id;
  @override
  final NoteModel frontNote;
  @override
  final NoteModel backNote;
  @override
  final SchedulingInfoModel? schedulingInfo;

  @override
  String toString() {
    return 'CardModel(id: $id, frontNote: $frontNote, backNote: $backNote, schedulingInfo: $schedulingInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.frontNote, frontNote) ||
                other.frontNote == frontNote) &&
            (identical(other.backNote, backNote) ||
                other.backNote == backNote) &&
            (identical(other.schedulingInfo, schedulingInfo) ||
                other.schedulingInfo == schedulingInfo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, frontNote, backNote, schedulingInfo);

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      __$$CardModelImplCopyWithImpl<_$CardModelImpl>(this, _$identity);
}

abstract class _CardModel implements CardModel {
  const factory _CardModel(
      {required final int id,
      required final NoteModel frontNote,
      required final NoteModel backNote,
      required final SchedulingInfoModel? schedulingInfo}) = _$CardModelImpl;

  @override
  int get id;
  @override
  NoteModel get frontNote;
  @override
  NoteModel get backNote;
  @override
  SchedulingInfoModel? get schedulingInfo;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
