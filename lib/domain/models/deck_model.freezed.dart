// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deck_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeckModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DeckSettingsModel get settings => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  CardStatusCountModel? get cardStatusCount =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeckModelCopyWith<DeckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeckModelCopyWith<$Res> {
  factory $DeckModelCopyWith(DeckModel value, $Res Function(DeckModel) then) =
      _$DeckModelCopyWithImpl<$Res, DeckModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      DeckSettingsModel settings,
      bool pinned,
      CardStatusCountModel? cardStatusCount});

  $DeckSettingsModelCopyWith<$Res> get settings;
  $CardStatusCountModelCopyWith<$Res>? get cardStatusCount;
}

/// @nodoc
class _$DeckModelCopyWithImpl<$Res, $Val extends DeckModel>
    implements $DeckModelCopyWith<$Res> {
  _$DeckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? settings = null,
    Object? pinned = null,
    Object? cardStatusCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DeckSettingsModel,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      cardStatusCount: freezed == cardStatusCount
          ? _value.cardStatusCount
          : cardStatusCount // ignore: cast_nullable_to_non_nullable
              as CardStatusCountModel?,
    ) as $Val);
  }

  /// Create a copy of DeckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeckSettingsModelCopyWith<$Res> get settings {
    return $DeckSettingsModelCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  /// Create a copy of DeckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardStatusCountModelCopyWith<$Res>? get cardStatusCount {
    if (_value.cardStatusCount == null) {
      return null;
    }

    return $CardStatusCountModelCopyWith<$Res>(_value.cardStatusCount!,
        (value) {
      return _then(_value.copyWith(cardStatusCount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeckModelImplCopyWith<$Res>
    implements $DeckModelCopyWith<$Res> {
  factory _$$DeckModelImplCopyWith(
          _$DeckModelImpl value, $Res Function(_$DeckModelImpl) then) =
      __$$DeckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      DeckSettingsModel settings,
      bool pinned,
      CardStatusCountModel? cardStatusCount});

  @override
  $DeckSettingsModelCopyWith<$Res> get settings;
  @override
  $CardStatusCountModelCopyWith<$Res>? get cardStatusCount;
}

/// @nodoc
class __$$DeckModelImplCopyWithImpl<$Res>
    extends _$DeckModelCopyWithImpl<$Res, _$DeckModelImpl>
    implements _$$DeckModelImplCopyWith<$Res> {
  __$$DeckModelImplCopyWithImpl(
      _$DeckModelImpl _value, $Res Function(_$DeckModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? settings = null,
    Object? pinned = null,
    Object? cardStatusCount = freezed,
  }) {
    return _then(_$DeckModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as DeckSettingsModel,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      cardStatusCount: freezed == cardStatusCount
          ? _value.cardStatusCount
          : cardStatusCount // ignore: cast_nullable_to_non_nullable
              as CardStatusCountModel?,
    ));
  }
}

/// @nodoc

class _$DeckModelImpl implements _DeckModel {
  const _$DeckModelImpl(
      {required this.id,
      required this.name,
      required this.settings,
      required this.pinned,
      this.cardStatusCount});

  @override
  final int id;
  @override
  final String name;
  @override
  final DeckSettingsModel settings;
  @override
  final bool pinned;
  @override
  final CardStatusCountModel? cardStatusCount;

  @override
  String toString() {
    return 'DeckModel(id: $id, name: $name, settings: $settings, pinned: $pinned, cardStatusCount: $cardStatusCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeckModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.cardStatusCount, cardStatusCount) ||
                other.cardStatusCount == cardStatusCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, settings, pinned, cardStatusCount);

  /// Create a copy of DeckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeckModelImplCopyWith<_$DeckModelImpl> get copyWith =>
      __$$DeckModelImplCopyWithImpl<_$DeckModelImpl>(this, _$identity);
}

abstract class _DeckModel implements DeckModel {
  const factory _DeckModel(
      {required final int id,
      required final String name,
      required final DeckSettingsModel settings,
      required final bool pinned,
      final CardStatusCountModel? cardStatusCount}) = _$DeckModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  DeckSettingsModel get settings;
  @override
  bool get pinned;
  @override
  CardStatusCountModel? get cardStatusCount;

  /// Create a copy of DeckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeckModelImplCopyWith<_$DeckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
