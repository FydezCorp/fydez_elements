import 'package:example/button/buttons_demo_page.dart';
import 'package:example/category_item/categoty_item_demo_page.dart';
import 'package:example/dropdown/dropdown_demo_page.dart';
import 'package:example/empty/empty_demo_page.dart';
import 'package:example/home_page.dart';
import 'package:example/icon_packs/icon_packs_demo_page.dart';
import 'package:example/maps/maps_page.dart';
import 'package:example/market_item/market_item_demo_page.dart';
import 'package:example/nav_bar/nav_bar_demo_page.dart';
import 'package:example/notifier/notifier_demo_page.dart';
import 'package:example/popups/popups_demo_page.dart';
import 'package:example/product_gridview/product_grid_view_demo_page.dart';
import 'package:example/routes.dart';
import 'package:example/skeletons/skeletons_demo_page.dart';
import 'package:example/slider/slider_demo_page.dart';
import 'package:example/text_inputs/text_inputs_demo_page.dart';
import 'package:example/tiles/tiles_demo_page.dart';
import 'package:go_router/go_router.dart';

import 'cart_item/cart_item_demo_page.dart';

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
          }),
      GoRoute(
        path: FydezDemoRoutes.productGridView,
        builder: (context, state) {
          return const ProductGridViewDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.slider,
        builder: (context, state) {
          return const SliderDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.tiles,
        builder: (context, state) {
          return const TilesDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.empty,
        builder: (context, state) {
          return const EmptyDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.marketItem,
        builder: (context, state) {
          return const MarketItemDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.categoryItem,
        builder: (context, state) {
          return const CategoryItemDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.skeletons,
        builder: (context, state) {
          return const SkeletonsDemoPage();
        },
      ),
      GoRoute(
        path: FydezDemoRoutes.cartItem,
        builder: (context, state) {
          return const CartItemDemoPage();
        },
      ),
    ],
  );
}
