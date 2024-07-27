import 'package:auto_route/auto_route.dart';
import 'package:flanki/presentation/app_router.gr.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@RoutePage()
class ShellPage extends StatelessWidget {
  const ShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return AutoTabsRouter(
      routes: const [
        DecksRoute(),
        InsightsRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: context.tabsRouter.setActiveIndex,
            selectedIndex: context.tabsRouter.activeIndex,
            destinations: [
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.cardsThree),
                selectedIcon: const Icon(PhosphorIconsFill.cardsThree),
                label: tr.decksDestinationLabel,
              ),
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.chartBar),
                selectedIcon: const Icon(PhosphorIconsFill.chartBar),
                label: tr.insightsDestinationLabel,
              ),
              NavigationDestination(
                icon: const Icon(PhosphorIconsRegular.gear),
                selectedIcon: const Icon(PhosphorIconsFill.gear),
                label: tr.settingsDestinationLabel,
              ),
            ],
          ),
        );
      },
    );
  }
}
