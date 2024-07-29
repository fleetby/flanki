// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_status_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CardStatusCountModel {
  int get initial => throw _privateConstructorUsedError;
  int get learning => throw _privateConstructorUsedError;
  int get review => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Create a copy of CardStatusCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardStatusCountModelCopyWith<CardStatusCountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStatusCountModelCopyWith<$Res> {
  factory $CardStatusCountModelCopyWith(CardStatusCountModel value,
          $Res Function(CardStatusCountModel) then) =
      _$CardStatusCountModelCopyWithImpl<$Res, CardStatusCountModel>;
  @useResult
  $Res call({int initial, int learning, int review, int total});
}

/// @nodoc
class _$CardStatusCountModelCopyWithImpl<$Res,
        $Val extends CardStatusCountModel>
    implements $CardStatusCountModelCopyWith<$Res> {
  _$CardStatusCountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardStatusCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initial = null,
    Object? learning = null,
    Object? review = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      initial: null == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as int,
      learning: null == learning
          ? _value.learning
          : learning // ignore: cast_nullable_to_non_nullable
              as int,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardStatusCountModelImplCopyWith<$Res>
    implements $CardStatusCountModelCopyWith<$Res> {
  factory _$$CardStatusCountModelImplCopyWith(_$CardStatusCountModelImpl value,
          $Res Function(_$CardStatusCountModelImpl) then) =
      __$$CardStatusCountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int initial, int learning, int review, int total});
}

/// @nodoc
class __$$CardStatusCountModelImplCopyWithImpl<$Res>
    extends _$CardStatusCountModelCopyWithImpl<$Res, _$CardStatusCountModelImpl>
    implements _$$CardStatusCountModelImplCopyWith<$Res> {
  __$$CardStatusCountModelImplCopyWithImpl(_$CardStatusCountModelImpl _value,
      $Res Function(_$CardStatusCountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardStatusCountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initial = null,
    Object? learning = null,
    Object? review = null,
    Object? total = null,
  }) {
    return _then(_$CardStatusCountModelImpl(
      initial: null == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as int,
      learning: null == learning
          ? _value.learning
          : learning // ignore: cast_nullable_to_non_nullable
              as int,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CardStatusCountModelImpl implements _CardStatusCountModel {
  const _$CardStatusCountModelImpl(
      {required this.initial,
      required this.learning,
      required this.review,
      required this.total});

  @override
  final int initial;
  @override
  final int learning;
  @override
  final int review;
  @override
  final int total;

  @override
  String toString() {
    return 'CardStatusCountModel(initial: $initial, learning: $learning, review: $review, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardStatusCountModelImpl &&
            (identical(other.initial, initial) || other.initial == initial) &&
            (identical(other.learning, learning) ||
                other.learning == learning) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initial, learning, review, total);

  /// Create a copy of CardStatusCountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardStatusCountModelImplCopyWith<_$CardStatusCountModelImpl>
      get copyWith =>
          __$$CardStatusCountModelImplCopyWithImpl<_$CardStatusCountModelImpl>(
              this, _$identity);
}

abstract class _CardStatusCountModel implements CardStatusCountModel {
  const factory _CardStatusCountModel(
      {required final int initial,
      required final int learning,
      required final int review,
      required final int total}) = _$CardStatusCountModelImpl;

  @override
  int get initial;
  @override
  int get learning;
  @override
  int get review;
  @override
  int get total;

  /// Create a copy of CardStatusCountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardStatusCountModelImplCopyWith<_$CardStatusCountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
