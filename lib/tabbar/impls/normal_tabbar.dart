import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/tabbar/data/tab_data.dart';
import 'package:fydez_elements/tabbar/tabbar_factory.dart';

class NormalTabbar implements TabbarFactory {
  @override
  Widget build(
    BuildContext context, {
    required List<TabData> tabs,
    required Function(int tabIndex) onTabChange,
    required int initialIndex,
  }) {
    return NormalTabbarWidget(
      tabs: tabs,
      onTabChange: onTabChange,
      initialIndex: initialIndex,
    );
  }
}

class NormalTabbarWidget extends StatefulWidget {
  final List<TabData> tabs;
  final Function(int tabIndex) onTabChange;
  final int initialIndex;

  const NormalTabbarWidget({
    super.key,
    required this.tabs,
    required this.onTabChange,
    required this.initialIndex,
  });

  @override
  State<NormalTabbarWidget> createState() => _NormalTabbarWidgetState();
}

class _NormalTabbarWidgetState extends State<NormalTabbarWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: widget.tabs.length,
      vsync: this,
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
            .map((tabItem) => Tab(
                  text: tabItem.title,
                ))
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
