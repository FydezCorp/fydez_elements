import 'package:flutter/material.dart';

class GridViewMaker extends StatelessWidget {
  final List<Widget> children;
  final double gap;
  const GridViewMaker({
    Key? key,
    required this.children,
    required this.gap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) {
        return children[index];
      },
      itemCount: children.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: gap,
        mainAxisSpacing: 0,
      ),
      physics: const BouncingScrollPhysics(),
    );
  }
}
