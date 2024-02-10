import 'package:flutter/widgets.dart';
import 'package:fydez_elements/blocks/text/text_block_factory.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';

class NormalTextFactory implements TextFactory {
  @override
  Widget create(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    return _NormalTextFactoryWidget(
      title: title,
      description: description,
    );
  }
}

class _NormalTextFactoryWidget extends StatefulWidget {
  final String title;
  final String description;
  const _NormalTextFactoryWidget({
    required this.title,
    required this.description,
  });

  @override
  State<_NormalTextFactoryWidget> createState() =>
      _NormalTextFactoryWidgetState();
}

class _NormalTextFactoryWidgetState extends State<_NormalTextFactoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.fySpacing.topBottomPadding.toDouble(),
        horizontal: context.fySpacing.rightLeftPadding.toDouble(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: context.textTheme.titleLarge!.copyWith(
              color: context.fyColors.titleColor,
            ),
          ),
          const Gap(4),
          Text(
            widget.description,
            style: context.textTheme.bodyMedium!.copyWith(
              color: context.fyColors.subtitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
