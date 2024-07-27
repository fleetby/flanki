// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function() themeChanged,
    required TResult Function() localeChanged,
    required TResult Function(AppTheme? theme) setTheme,
    required TResult Function(Locale? locale) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function()? themeChanged,
    TResult? Function()? localeChanged,
    TResult? Function(AppTheme? theme)? setTheme,
    TResult? Function(Locale? locale)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function()? themeChanged,
    TResult Function()? localeChanged,
    TResult Function(AppTheme? theme)? setTheme,
    TResult Function(Locale? locale)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPreload value) preload,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSetTheme value) setTheme,
    required TResult Function(SettingsSetLocale value) setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPreload value)? preload,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsLocaleChanged value)? localeChanged,
    TResult? Function(SettingsSetTheme value)? setTheme,
    TResult? Function(SettingsSetLocale value)? setLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPreload value)? preload,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSetTheme value)? setTheme,
    TResult Function(SettingsSetLocale value)? setLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsPreloadImplCopyWith<$Res> {
  factory _$$SettingsPreloadImplCopyWith(_$SettingsPreloadImpl value,
          $Res Function(_$SettingsPreloadImpl) then) =
      __$$SettingsPreloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsPreloadImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsPreloadImpl>
    implements _$$SettingsPreloadImplCopyWith<$Res> {
  __$$SettingsPreloadImplCopyWithImpl(
      _$SettingsPreloadImpl _value, $Res Function(_$SettingsPreloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsPreloadImpl implements SettingsPreload {
  const _$SettingsPreloadImpl();

  @override
  String toString() {
    return 'SettingsEvent.preload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsPreloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function() themeChanged,
    required TResult Function() localeChanged,
    required TResult Function(AppTheme? theme) setTheme,
    required TResult Function(Locale? locale) setLocale,
  }) {
    return preload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function()? themeChanged,
    TResult? Function()? localeChanged,
    TResult? Function(AppTheme? theme)? setTheme,
    TResult? Function(Locale? locale)? setLocale,
  }) {
    return preload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function()? themeChanged,
    TResult Function()? localeChanged,
    TResult Function(AppTheme? theme)? setTheme,
    TResult Function(Locale? locale)? setLocale,
    required TResult orElse(),
  }) {
    if (preload != null) {
      return preload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPreload value) preload,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSetTheme value) setTheme,
    required TResult Function(SettingsSetLocale value) setLocale,
  }) {
    return preload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPreload value)? preload,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsLocaleChanged value)? localeChanged,
    TResult? Function(SettingsSetTheme value)? setTheme,
    TResult? Function(SettingsSetLocale value)? setLocale,
  }) {
    return preload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPreload value)? preload,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSetTheme value)? setTheme,
    TResult Function(SettingsSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (preload != null) {
      return preload(this);
    }
    return orElse();
  }
}

abstract class SettingsPreload implements SettingsEvent {
  const factory SettingsPreload() = _$SettingsPreloadImpl;
}

/// @nodoc
abstract class _$$SettingsThemeChangedImplCopyWith<$Res> {
  factory _$$SettingsThemeChangedImplCopyWith(_$SettingsThemeChangedImpl value,
          $Res Function(_$SettingsThemeChangedImpl) then) =
      __$$SettingsThemeChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsThemeChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsThemeChangedImpl>
    implements _$$SettingsThemeChangedImplCopyWith<$Res> {
  __$$SettingsThemeChangedImplCopyWithImpl(_$SettingsThemeChangedImpl _value,
      $Res Function(_$SettingsThemeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsThemeChangedImpl implements SettingsThemeChanged {
  const _$SettingsThemeChangedImpl();

  @override
  String toString() {
    return 'SettingsEvent.themeChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsThemeChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function() themeChanged,
    required TResult Function() localeChanged,
    required TResult Function(AppTheme? theme) setTheme,
    required TResult Function(Locale? locale) setLocale,
  }) {
    return themeChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function()? themeChanged,
    TResult? Function()? localeChanged,
    TResult? Function(AppTheme? theme)? setTheme,
    TResult? Function(Locale? locale)? setLocale,
  }) {
    return themeChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function()? themeChanged,
    TResult Function()? localeChanged,
    TResult Function(AppTheme? theme)? setTheme,
    TResult Function(Locale? locale)? setLocale,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPreload value) preload,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSetTheme value) setTheme,
    required TResult Function(SettingsSetLocale value) setLocale,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPreload value)? preload,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsLocaleChanged value)? localeChanged,
    TResult? Function(SettingsSetTheme value)? setTheme,
    TResult? Function(SettingsSetLocale value)? setLocale,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPreload value)? preload,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSetTheme value)? setTheme,
    TResult Function(SettingsSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsThemeChanged implements SettingsEvent {
  const factory SettingsThemeChanged() = _$SettingsThemeChangedImpl;
}

/// @nodoc
abstract class _$$SettingsLocaleChangedImplCopyWith<$Res> {
  factory _$$SettingsLocaleChangedImplCopyWith(
          _$SettingsLocaleChangedImpl value,
          $Res Function(_$SettingsLocaleChangedImpl) then) =
      __$$SettingsLocaleChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsLocaleChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsLocaleChangedImpl>
    implements _$$SettingsLocaleChangedImplCopyWith<$Res> {
  __$$SettingsLocaleChangedImplCopyWithImpl(_$SettingsLocaleChangedImpl _value,
      $Res Function(_$SettingsLocaleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsLocaleChangedImpl implements SettingsLocaleChanged {
  const _$SettingsLocaleChangedImpl();

  @override
  String toString() {
    return 'SettingsEvent.localeChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLocaleChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function() themeChanged,
    required TResult Function() localeChanged,
    required TResult Function(AppTheme? theme) setTheme,
    required TResult Function(Locale? locale) setLocale,
  }) {
    return localeChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function()? themeChanged,
    TResult? Function()? localeChanged,
    TResult? Function(AppTheme? theme)? setTheme,
    TResult? Function(Locale? locale)? setLocale,
  }) {
    return localeChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function()? themeChanged,
    TResult Function()? localeChanged,
    TResult Function(AppTheme? theme)? setTheme,
    TResult Function(Locale? locale)? setLocale,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPreload value) preload,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSetTheme value) setTheme,
    required TResult Function(SettingsSetLocale value) setLocale,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPreload value)? preload,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsLocaleChanged value)? localeChanged,
    TResult? Function(SettingsSetTheme value)? setTheme,
    TResult? Function(SettingsSetLocale value)? setLocale,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPreload value)? preload,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSetTheme value)? setTheme,
    TResult Function(SettingsSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsLocaleChanged implements SettingsEvent {
  const factory SettingsLocaleChanged() = _$SettingsLocaleChangedImpl;
}

/// @nodoc
abstract class _$$SettingsSetThemeImplCopyWith<$Res> {
  factory _$$SettingsSetThemeImplCopyWith(_$SettingsSetThemeImpl value,
          $Res Function(_$SettingsSetThemeImpl) then) =
      __$$SettingsSetThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppTheme? theme});
}

/// @nodoc
class __$$SettingsSetThemeImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsSetThemeImpl>
    implements _$$SettingsSetThemeImplCopyWith<$Res> {
  __$$SettingsSetThemeImplCopyWithImpl(_$SettingsSetThemeImpl _value,
      $Res Function(_$SettingsSetThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$SettingsSetThemeImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme?,
    ));
  }
}

/// @nodoc

class _$SettingsSetThemeImpl implements SettingsSetTheme {
  const _$SettingsSetThemeImpl({required this.theme});

  @override
  final AppTheme? theme;

  @override
  String toString() {
    return 'SettingsEvent.setTheme(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsSetThemeImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsSetThemeImplCopyWith<_$SettingsSetThemeImpl> get copyWith =>
      __$$SettingsSetThemeImplCopyWithImpl<_$SettingsSetThemeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function() themeChanged,
    required TResult Function() localeChanged,
    required TResult Function(AppTheme? theme) setTheme,
    required TResult Function(Locale? locale) setLocale,
  }) {
    return setTheme(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function()? themeChanged,
    TResult? Function()? localeChanged,
    TResult? Function(AppTheme? theme)? setTheme,
    TResult? Function(Locale? locale)? setLocale,
  }) {
    return setTheme?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function()? themeChanged,
    TResult Function()? localeChanged,
    TResult Function(AppTheme? theme)? setTheme,
    TResult Function(Locale? locale)? setLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPreload value) preload,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSetTheme value) setTheme,
    required TResult Function(SettingsSetLocale value) setLocale,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPreload value)? preload,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsLocaleChanged value)? localeChanged,
    TResult? Function(SettingsSetTheme value)? setTheme,
    TResult? Function(SettingsSetLocale value)? setLocale,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPreload value)? preload,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSetTheme value)? setTheme,
    TResult Function(SettingsSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class SettingsSetTheme implements SettingsEvent {
  const factory SettingsSetTheme({required final AppTheme? theme}) =
      _$SettingsSetThemeImpl;

  AppTheme? get theme;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsSetThemeImplCopyWith<_$SettingsSetThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsSetLocaleImplCopyWith<$Res> {
  factory _$$SettingsSetLocaleImplCopyWith(_$SettingsSetLocaleImpl value,
          $Res Function(_$SettingsSetLocaleImpl) then) =
      __$$SettingsSetLocaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale? locale});
}

/// @nodoc
class __$$SettingsSetLocaleImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsSetLocaleImpl>
    implements _$$SettingsSetLocaleImplCopyWith<$Res> {
  __$$SettingsSetLocaleImplCopyWithImpl(_$SettingsSetLocaleImpl _value,
      $Res Function(_$SettingsSetLocaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$SettingsSetLocaleImpl(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SettingsSetLocaleImpl implements SettingsSetLocale {
  const _$SettingsSetLocaleImpl({required this.locale});

  @override
  final Locale? locale;

  @override
  String toString() {
    return 'SettingsEvent.setLocale(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsSetLocaleImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsSetLocaleImplCopyWith<_$SettingsSetLocaleImpl> get copyWith =>
      __$$SettingsSetLocaleImplCopyWithImpl<_$SettingsSetLocaleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preload,
    required TResult Function() themeChanged,
    required TResult Function() localeChanged,
    required TResult Function(AppTheme? theme) setTheme,
    required TResult Function(Locale? locale) setLocale,
  }) {
    return setLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preload,
    TResult? Function()? themeChanged,
    TResult? Function()? localeChanged,
    TResult? Function(AppTheme? theme)? setTheme,
    TResult? Function(Locale? locale)? setLocale,
  }) {
    return setLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preload,
    TResult Function()? themeChanged,
    TResult Function()? localeChanged,
    TResult Function(AppTheme? theme)? setTheme,
    TResult Function(Locale? locale)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsPreload value) preload,
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(SettingsLocaleChanged value) localeChanged,
    required TResult Function(SettingsSetTheme value) setTheme,
    required TResult Function(SettingsSetLocale value) setLocale,
  }) {
    return setLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsPreload value)? preload,
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(SettingsLocaleChanged value)? localeChanged,
    TResult? Function(SettingsSetTheme value)? setTheme,
    TResult? Function(SettingsSetLocale value)? setLocale,
  }) {
    return setLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsPreload value)? preload,
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(SettingsLocaleChanged value)? localeChanged,
    TResult Function(SettingsSetTheme value)? setTheme,
    TResult Function(SettingsSetLocale value)? setLocale,
    required TResult orElse(),
  }) {
    if (setLocale != null) {
      return setLocale(this);
    }
    return orElse();
  }
}

abstract class SettingsSetLocale implements SettingsEvent {
  const factory SettingsSetLocale({required final Locale? locale}) =
      _$SettingsSetLocaleImpl;

  Locale? get locale;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsSetLocaleImplCopyWith<_$SettingsSetLocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppTheme preferredTheme, Locale? preferredLocale)
        loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoading value) loading,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoading value)? loading,
    TResult? Function(SettingsLoaded value)? loaded,
    TResult? Function(SettingsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoading value)? loading,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SettingsInitialImplCopyWith<$Res> {
  factory _$$SettingsInitialImplCopyWith(_$SettingsInitialImpl value,
          $Res Function(_$SettingsInitialImpl) then) =
      __$$SettingsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsInitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsInitialImpl>
    implements _$$SettingsInitialImplCopyWith<$Res> {
  __$$SettingsInitialImplCopyWithImpl(
      _$SettingsInitialImpl _value, $Res Function(_$SettingsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsInitialImpl implements SettingsInitial {
  const _$SettingsInitialImpl();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppTheme preferredTheme, Locale? preferredLocale)
        loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult Function()? error,
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
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoading value) loading,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoading value)? loading,
    TResult? Function(SettingsLoaded value)? loaded,
    TResult? Function(SettingsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoading value)? loading,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingsInitial implements SettingsState {
  const factory SettingsInitial() = _$SettingsInitialImpl;
}

/// @nodoc
abstract class _$$SettingsLoadingImplCopyWith<$Res> {
  factory _$$SettingsLoadingImplCopyWith(_$SettingsLoadingImpl value,
          $Res Function(_$SettingsLoadingImpl) then) =
      __$$SettingsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsLoadingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadingImpl>
    implements _$$SettingsLoadingImplCopyWith<$Res> {
  __$$SettingsLoadingImplCopyWithImpl(
      _$SettingsLoadingImpl _value, $Res Function(_$SettingsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsLoadingImpl implements SettingsLoading {
  const _$SettingsLoadingImpl();

  @override
  String toString() {
    return 'SettingsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppTheme preferredTheme, Locale? preferredLocale)
        loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult Function()? error,
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
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoading value) loading,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoading value)? loading,
    TResult? Function(SettingsLoaded value)? loaded,
    TResult? Function(SettingsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoading value)? loading,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingsLoading implements SettingsState {
  const factory SettingsLoading() = _$SettingsLoadingImpl;
}

/// @nodoc
abstract class _$$SettingsLoadedImplCopyWith<$Res> {
  factory _$$SettingsLoadedImplCopyWith(_$SettingsLoadedImpl value,
          $Res Function(_$SettingsLoadedImpl) then) =
      __$$SettingsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppTheme preferredTheme, Locale? preferredLocale});
}

/// @nodoc
class __$$SettingsLoadedImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadedImpl>
    implements _$$SettingsLoadedImplCopyWith<$Res> {
  __$$SettingsLoadedImplCopyWithImpl(
      _$SettingsLoadedImpl _value, $Res Function(_$SettingsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preferredTheme = null,
    Object? preferredLocale = freezed,
  }) {
    return _then(_$SettingsLoadedImpl(
      preferredTheme: null == preferredTheme
          ? _value.preferredTheme
          : preferredTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      preferredLocale: freezed == preferredLocale
          ? _value.preferredLocale
          : preferredLocale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$SettingsLoadedImpl implements SettingsLoaded {
  const _$SettingsLoadedImpl(
      {required this.preferredTheme, required this.preferredLocale});

  @override
  final AppTheme preferredTheme;
  @override
  final Locale? preferredLocale;

  @override
  String toString() {
    return 'SettingsState.loaded(preferredTheme: $preferredTheme, preferredLocale: $preferredLocale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadedImpl &&
            (identical(other.preferredTheme, preferredTheme) ||
                other.preferredTheme == preferredTheme) &&
            (identical(other.preferredLocale, preferredLocale) ||
                other.preferredLocale == preferredLocale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, preferredTheme, preferredLocale);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      __$$SettingsLoadedImplCopyWithImpl<_$SettingsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppTheme preferredTheme, Locale? preferredLocale)
        loaded,
    required TResult Function() error,
  }) {
    return loaded(preferredTheme, preferredLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(preferredTheme, preferredLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(preferredTheme, preferredLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoading value) loading,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoading value)? loading,
    TResult? Function(SettingsLoaded value)? loaded,
    TResult? Function(SettingsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoading value)? loading,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SettingsLoaded implements SettingsState {
  const factory SettingsLoaded(
      {required final AppTheme preferredTheme,
      required final Locale? preferredLocale}) = _$SettingsLoadedImpl;

  AppTheme get preferredTheme;
  Locale? get preferredLocale;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsLoadedImplCopyWith<_$SettingsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsErrorImplCopyWith<$Res> {
  factory _$$SettingsErrorImplCopyWith(
          _$SettingsErrorImpl value, $Res Function(_$SettingsErrorImpl) then) =
      __$$SettingsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsErrorImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsErrorImpl>
    implements _$$SettingsErrorImplCopyWith<$Res> {
  __$$SettingsErrorImplCopyWithImpl(
      _$SettingsErrorImpl _value, $Res Function(_$SettingsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingsErrorImpl implements SettingsError {
  const _$SettingsErrorImpl();

  @override
  String toString() {
    return 'SettingsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppTheme preferredTheme, Locale? preferredLocale)
        loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppTheme preferredTheme, Locale? preferredLocale)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsLoading value) loading,
    required TResult Function(SettingsLoaded value) loaded,
    required TResult Function(SettingsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsLoading value)? loading,
    TResult? Function(SettingsLoaded value)? loaded,
    TResult? Function(SettingsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsLoading value)? loading,
    TResult Function(SettingsLoaded value)? loaded,
    TResult Function(SettingsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SettingsError implements SettingsState {
  const factory SettingsError() = _$SettingsErrorImpl;
}
