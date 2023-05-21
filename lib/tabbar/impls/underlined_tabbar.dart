import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/tabbar/data/tab_data.dart';
import 'package:fydez_elements/tabbar/tabbar_factory.dart';

class UnderlinedTabbar implements TabbarFactory {
  @override
  Widget build(
    BuildContext context, {
    required List<TabData> tabs,
    required Function(int tabIndex) onTabChange,
    required int initialIndex,
    Key? key,
  }) {
    return UnderlinedTabbarWidget(
      key: key,
      tabs: tabs,
      onTabChange: onTabChange,
      initialIndex: initialIndex,
    );
  }
}

class UnderlinedTabbarWidget extends StatefulWidget {
  final List<TabData> tabs;
  final Function(int tabIndex) onTabChange;
  final int initialIndex;

  const UnderlinedTabbarWidget({
    super.key,
    required this.tabs,
    required this.onTabChange,
    required this.initialIndex,
  });

  @override
  State<UnderlinedTabbarWidget> createState() => _UnderlinedTabbarWidgetState();
}

class _UnderlinedTabbarWidgetState extends State<UnderlinedTabbarWidget>
    with TickerProviderStateMixin {
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
    return DefaultTabController(
      length: widget.tabs.length,
      initialIndex: widget.initialIndex,
      child: TabBar(
        tabs: widget.tabs
            .map((tabData) => UnderlinedTabWidget(tabData: tabData))
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
        unselectedLabelColor: const Color(0xff6C6C6C),
        indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
        isScrollable: true,
      ),
    );
  }
}

class UnderlinedTabWidget extends StatelessWidget {
  final TabData tabData;
  const UnderlinedTabWidget({
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
