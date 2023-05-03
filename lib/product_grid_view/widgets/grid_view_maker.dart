import 'package:flutter/material.dart';
import 'package:fydez_elements/general_data/scroll_option.dart';

class GridViewMaker extends StatelessWidget {
  final List<Widget> children;
  final double gap;
  final ScrollOption? scrollOption;
  const GridViewMaker({
    Key? key,
    required this.children,
    required this.gap,
    this.scrollOption = ScrollOption.scrollable,
  }) : super(key: key);

  bool get shrinkWrap =>
      scrollOption == ScrollOption.nonScrollable ? true : false;
  ScrollPhysics get physics => scrollOption == ScrollOption.nonScrollable
      ? const NeverScrollableScrollPhysics()
      : const BouncingScrollPhysics();
  @override
  Widget build(BuildContext context) {
    // TODO: Try to replace GridView with LayoutGrid.
    return GridView.builder(
      shrinkWrap: shrinkWrap,
      padding: EdgeInsets.symmetric(horizontal: gap),
      physics: physics,
      itemBuilder: (context, index) {
        return children[index];
      },
      itemCount: children.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
        crossAxisSpacing: gap,
        mainAxisSpacing: gap,
      ),
    );
  }
}
