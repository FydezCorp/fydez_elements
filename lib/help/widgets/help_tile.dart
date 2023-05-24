import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:gap/gap.dart';

class HelpTile extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData icon;
  const HelpTile({
    required this.title,
    required this.onPressed,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: context.fyColors.textFiveColor,
              width: 0.5,
            ),
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: context.fyColors.textTenColor,
              ),
              const Gap(12.0),
              Text(
                title,
                style: context.textTheme.titleMedium!.copyWith(
                  color: context.fyColors.textTenColor,
                ),
              ),
              const Spacer(),
              Icon(
                Iconsax.arrow_right_3,
                size: 18,
                color: context.fyColors.textEightColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
