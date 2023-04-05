import 'package:example/home_page.dart';
import 'package:example/nav_bar/nav_bar_demo_page.dart';
import 'package:example/routes.dart';
import 'package:go_router/go_router.dart';

class FydezDemoRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: FydezDemoRoutes.initial,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.navBars,
        builder: (context, state) {
          return const NavBarDemoPage();
        },
      ),
    ],
  );
}
