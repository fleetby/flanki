import 'package:auto_route/auto_route.dart';
import 'package:flanki/presentation/app_router.gr.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ShellRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: DecksRoute.page,
              initial: true,
            ),
            AutoRoute(page: InsightsRoute.page),
            AutoRoute(page: SettingsRoute.page),
          ],
        ),
        AutoRoute(page: DeckRoute.page),
        AutoRoute(page: StudyRoute.page),
        AutoRoute(page: CreateCardRoute.page),
      ];
}
