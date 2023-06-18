import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';
import 'package:skeletons/skeletons.dart';

class CartItemSkeleton extends StatelessWidget {
  const CartItemSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: context.fyColors.textTwoColor),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              width: 80,
              height: 80,
            ),
          ),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                child: SkeletonLine(
                  style: SkeletonLineStyle(height: 20),
                ),
              ),
              Gap(10),
              SizedBox(
                width: 90,
                child: SkeletonLine(
                  style: SkeletonLineStyle(height: 10),
                ),
              ),
              Gap(5),
              SizedBox(
                width: 90,
                child: SkeletonLine(
                  style: SkeletonLineStyle(height: 10),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
