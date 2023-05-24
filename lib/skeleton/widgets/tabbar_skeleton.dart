import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class TabbarSkeleton extends StatelessWidget {
  const TabbarSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 75,
            child: const SkeletonLine(),
          );
        },
      ),
    );
  }
}
