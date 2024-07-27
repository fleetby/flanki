// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flanki/presentation/pages/deck_page.dart' as _i1;
import 'package:flanki/presentation/pages/decks_page.dart' as _i2;
import 'package:flanki/presentation/pages/insights_page.dart' as _i3;
import 'package:flanki/presentation/pages/settings_page.dart' as _i4;
import 'package:flanki/presentation/pages/shell_page.dart' as _i5;
import 'package:flanki/presentation/pages/study_page.dart' as _i6;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    DeckRoute.name: (routeData) {
      final args = routeData.argsAs<DeckRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DeckPage(
          deckId: args.deckId,
          key: args.key,
        ),
      );
    },
    DecksRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DecksPage(),
      );
    },
    InsightsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.InsightsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SettingsPage(),
      );
    },
    ShellRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ShellPage(),
      );
    },
    StudyRoute.name: (routeData) {
      final args = routeData.argsAs<StudyRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.StudyPage(
          deckId: args.deckId,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.DeckPage]
class DeckRoute extends _i7.PageRouteInfo<DeckRouteArgs> {
  DeckRoute({
    required int deckId,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          DeckRoute.name,
          args: DeckRouteArgs(
            deckId: deckId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DeckRoute';

  static const _i7.PageInfo<DeckRouteArgs> page =
      _i7.PageInfo<DeckRouteArgs>(name);
}

class DeckRouteArgs {
  const DeckRouteArgs({
    required this.deckId,
    this.key,
  });

  final int deckId;

  final _i8.Key? key;

  @override
  String toString() {
    return 'DeckRouteArgs{deckId: $deckId, key: $key}';
  }
}

/// generated route for
/// [_i2.DecksPage]
class DecksRoute extends _i7.PageRouteInfo<void> {
  const DecksRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DecksRoute.name,
          initialChildren: children,
        );

  static const String name = 'DecksRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.InsightsPage]
class InsightsRoute extends _i7.PageRouteInfo<void> {
  const InsightsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          InsightsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsightsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i7.PageRouteInfo<void> {
  const SettingsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ShellPage]
class ShellRoute extends _i7.PageRouteInfo<void> {
  const ShellRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShellRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.StudyPage]
class StudyRoute extends _i7.PageRouteInfo<StudyRouteArgs> {
  StudyRoute({
    required int deckId,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          StudyRoute.name,
          args: StudyRouteArgs(
            deckId: deckId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StudyRoute';

  static const _i7.PageInfo<StudyRouteArgs> page =
      _i7.PageInfo<StudyRouteArgs>(name);
}

class StudyRouteArgs {
  const StudyRouteArgs({
    required this.deckId,
    this.key,
  });

  final int deckId;

  final _i8.Key? key;

  @override
  String toString() {
    return 'StudyRouteArgs{deckId: $deckId, key: $key}';
  }
}
