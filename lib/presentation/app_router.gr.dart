// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flanki/presentation/pages/create_card_page.dart' as _i1;
import 'package:flanki/presentation/pages/deck_page.dart' as _i2;
import 'package:flanki/presentation/pages/decks_page.dart' as _i3;
import 'package:flanki/presentation/pages/insights_page.dart' as _i4;
import 'package:flanki/presentation/pages/settings_page.dart' as _i5;
import 'package:flanki/presentation/pages/shell_page.dart' as _i6;
import 'package:flanki/presentation/pages/study_page.dart' as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CreateCardRoute.name: (routeData) {
      final args = routeData.argsAs<CreateCardRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CreateCardPage(
          deckId: args.deckId,
          cardId: args.cardId,
          key: args.key,
        ),
      );
    },
    DeckRoute.name: (routeData) {
      final args = routeData.argsAs<DeckRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DeckPage(
          deckId: args.deckId,
          key: args.key,
        ),
      );
    },
    DecksRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DecksPage(),
      );
    },
    InsightsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.InsightsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SettingsPage(),
      );
    },
    ShellRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ShellPage(),
      );
    },
    StudyRoute.name: (routeData) {
      final args = routeData.argsAs<StudyRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.StudyPage(
          deckId: args.deckId,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateCardPage]
class CreateCardRoute extends _i8.PageRouteInfo<CreateCardRouteArgs> {
  CreateCardRoute({
    required int? deckId,
    int? cardId,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CreateCardRoute.name,
          args: CreateCardRouteArgs(
            deckId: deckId,
            cardId: cardId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateCardRoute';

  static const _i8.PageInfo<CreateCardRouteArgs> page =
      _i8.PageInfo<CreateCardRouteArgs>(name);
}

class CreateCardRouteArgs {
  const CreateCardRouteArgs({
    required this.deckId,
    this.cardId,
    this.key,
  });

  final int? deckId;

  final int? cardId;

  final _i9.Key? key;

  @override
  String toString() {
    return 'CreateCardRouteArgs{deckId: $deckId, cardId: $cardId, key: $key}';
  }
}

/// generated route for
/// [_i2.DeckPage]
class DeckRoute extends _i8.PageRouteInfo<DeckRouteArgs> {
  DeckRoute({
    required int deckId,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          DeckRoute.name,
          args: DeckRouteArgs(
            deckId: deckId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DeckRoute';

  static const _i8.PageInfo<DeckRouteArgs> page =
      _i8.PageInfo<DeckRouteArgs>(name);
}

class DeckRouteArgs {
  const DeckRouteArgs({
    required this.deckId,
    this.key,
  });

  final int deckId;

  final _i9.Key? key;

  @override
  String toString() {
    return 'DeckRouteArgs{deckId: $deckId, key: $key}';
  }
}

/// generated route for
/// [_i3.DecksPage]
class DecksRoute extends _i8.PageRouteInfo<void> {
  const DecksRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DecksRoute.name,
          initialChildren: children,
        );

  static const String name = 'DecksRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InsightsPage]
class InsightsRoute extends _i8.PageRouteInfo<void> {
  const InsightsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          InsightsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InsightsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ShellPage]
class ShellRoute extends _i8.PageRouteInfo<void> {
  const ShellRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ShellRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShellRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.StudyPage]
class StudyRoute extends _i8.PageRouteInfo<StudyRouteArgs> {
  StudyRoute({
    required int deckId,
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          StudyRoute.name,
          args: StudyRouteArgs(
            deckId: deckId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StudyRoute';

  static const _i8.PageInfo<StudyRouteArgs> page =
      _i8.PageInfo<StudyRouteArgs>(name);
}

class StudyRouteArgs {
  const StudyRouteArgs({
    required this.deckId,
    this.key,
  });

  final int deckId;

  final _i9.Key? key;

  @override
  String toString() {
    return 'StudyRouteArgs{deckId: $deckId, key: $key}';
  }
}
