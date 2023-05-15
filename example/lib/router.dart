import 'package:example/button/buttons_demo_page.dart';
import 'package:example/dropdown/dropdown_demo_page.dart';
import 'package:example/home_page.dart';
import 'package:example/icon_packs/icon_packs_demo_page.dart';
import 'package:example/maps/maps_page.dart';
import 'package:example/nav_bar/nav_bar_demo_page.dart';
import 'package:example/notifier/notifier_demo_page.dart';
import 'package:example/popups/popups_demo_page.dart';
import 'package:example/routes.dart';
import 'package:example/text_inputs/text_inputs_demo_page.dart';
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
      GoRoute(
        path: FydezDemoRoutes.textInputs,
        builder: (context, state) {
          return const TextInputsDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.iconPacks,
        builder: (context, state) {
          return const IconPacksDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.buttons,
        builder: (context, state) {
          return const ButtonDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.popups,
        builder: (context, state) {
          return const PopUpDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.notifier,
        builder: (context, state) {
          return const NotifierDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.dropdown,
        builder: (context, state) {
          return const DropDownDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.maps,
        builder: (context, state) {
          return const MapsPage();
        },
      ),
    ],
  );
}
