import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:skeletons/skeletons.dart';

import '../../const/constants.dart';

class CategoryItemSkeleton extends StatelessWidget {
  const CategoryItemSkeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: Constants.categoryItemDefaultPadding,
      height: 80,
      decoration: BoxDecoration(
        color: context.fyColors.textOneColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SizedBox(
            width: 80,
            child: SkeletonLine(),
          ),
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
