import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class SkeletonsDemoPage extends StatelessWidget {
  const SkeletonsDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const Text('Category Item Skeleton'),
            FySkeletons.categoryItemSkeleton(),
            FySkeletons.categoryItemSkeleton(),
            FySkeletons.categoryItemSkeleton(),
            const Gap(20),
            const Text('Cart Item Skeleton'),
            FySkeletons.cartItemSkeleton(),
            FySkeletons.cartItemSkeleton(),
            FySkeletons.cartItemSkeleton(),
          ],
        )),
      ),
    );
  }
}
