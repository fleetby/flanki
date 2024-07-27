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
  int get initialCount => throw _privateConstructorUsedError;
  int get learningCount => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;

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
  $Res call({int initialCount, int learningCount, int reviewCount});
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
    Object? initialCount = null,
    Object? learningCount = null,
    Object? reviewCount = null,
  }) {
    return _then(_value.copyWith(
      initialCount: null == initialCount
          ? _value.initialCount
          : initialCount // ignore: cast_nullable_to_non_nullable
              as int,
      learningCount: null == learningCount
          ? _value.learningCount
          : learningCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
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
  $Res call({int initialCount, int learningCount, int reviewCount});
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
    Object? initialCount = null,
    Object? learningCount = null,
    Object? reviewCount = null,
  }) {
    return _then(_$CardStatusCountModelImpl(
      initialCount: null == initialCount
          ? _value.initialCount
          : initialCount // ignore: cast_nullable_to_non_nullable
              as int,
      learningCount: null == learningCount
          ? _value.learningCount
          : learningCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CardStatusCountModelImpl implements _CardStatusCountModel {
  const _$CardStatusCountModelImpl(
      {required this.initialCount,
      required this.learningCount,
      required this.reviewCount});

  @override
  final int initialCount;
  @override
  final int learningCount;
  @override
  final int reviewCount;

  @override
  String toString() {
    return 'CardStatusCountModel(initialCount: $initialCount, learningCount: $learningCount, reviewCount: $reviewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardStatusCountModelImpl &&
            (identical(other.initialCount, initialCount) ||
                other.initialCount == initialCount) &&
            (identical(other.learningCount, learningCount) ||
                other.learningCount == learningCount) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, initialCount, learningCount, reviewCount);

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
      {required final int initialCount,
      required final int learningCount,
      required final int reviewCount}) = _$CardStatusCountModelImpl;

  @override
  int get initialCount;
  @override
  int get learningCount;
  @override
  int get reviewCount;

  /// Create a copy of CardStatusCountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardStatusCountModelImplCopyWith<_$CardStatusCountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
