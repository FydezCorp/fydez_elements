import 'package:flutter/material.dart';
import 'package:fydez_elements/category_item/category_item_factory.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/image/fy_network_image.dart';

class NormalCategoryItem implements CategoryItemFactory {
  @override
  Widget build({
    Key? key,
    required String name,
    required String imageUrl,
    required VoidCallback? onTap,
    required double cornerRadius,
  }) {
    return NormalCategoryWidget(
      name: name,
      imageUrl: imageUrl,
      onTap: onTap,
      cornerRadius: cornerRadius,
    );
  }
}

class NormalCategoryWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final VoidCallback? onTap;
  final double cornerRadius;
  const NormalCategoryWidget({
    super.key,
    required this.name,
    required this.imageUrl,
    this.onTap,
    required this.cornerRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        borderRadius: BorderRadius.circular(cornerRadius),
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(cornerRadius),
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(cornerRadius),
              color: context.fyColors.textOneColor,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  right: 0,
                  child: FyNetworkImage(
                    url: imageUrl,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  child: Text(
                    name.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: context.fyColors.textNineColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
