import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/tabbar/data/tab_data.dart';
import 'package:fydez_elements/tabbar/tabbar_factory.dart';

class LightBackgroundTabbar implements TabbarFactory {
  @override
  Widget build(
    BuildContext context, {
    required List<TabData> tabs,
    required Function(int tabIndex) onTabChange,
    required int initialIndex,
    Key? key,
  }) {
    return LightBackgroundTabbarWidget(
      key: key,
      tabs: tabs,
      onTabChange: onTabChange,
      initialIndex: initialIndex,
    );
  }
}

class LightBackgroundTabbarWidget extends StatefulWidget {
  final List<TabData> tabs;
  final Function(int tabIndex) onTabChange;
  final int initialIndex;

  const LightBackgroundTabbarWidget({
    super.key,
    required this.tabs,
    required this.onTabChange,
    required this.initialIndex,
  });

  @override
  State<LightBackgroundTabbarWidget> createState() =>
      _LightBackgroundTabbarWidgetState();
}

class _LightBackgroundTabbarWidgetState
    extends State<LightBackgroundTabbarWidget> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: widget.tabs.length,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: DefaultTabController(
        length: widget.tabs.length,
        initialIndex: widget.initialIndex,
        child: TabBar(
          tabs: widget.tabs
              .map((tabData) => LightBackgroundTabWidget(tabData: tabData))
              .toList(),
          controller: _tabController,
          physics: const BouncingScrollPhysics(),
          onTap: (index) => widget.onTabChange(index),
          labelStyle: context.textTheme.labelMedium!.copyWith(
            color: context.fyColors.textTenColor,
          ),
          unselectedLabelStyle: context.textTheme.labelSmall!.copyWith(
            color: context.fyColors.textFiveColor,
          ),
          indicatorColor: Theme.of(context).colorScheme.primary,
          labelColor: Theme.of(context).colorScheme.primary,
          unselectedLabelColor: context.fyColors.textSevenColor,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
          isScrollable: true,
          padding: const EdgeInsets.symmetric(vertical: 3),
          splashFactory: NoSplash.splashFactory,
          splashBorderRadius: BorderRadius.circular(16),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: context.fyColors.textOneColor,
          ),
        ),
      ),
    );
  }
}

class LightBackgroundTabWidget extends StatelessWidget {
  final TabData tabData;
  const LightBackgroundTabWidget({
    required this.tabData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      text: tabData.title,
    );
  }
}
