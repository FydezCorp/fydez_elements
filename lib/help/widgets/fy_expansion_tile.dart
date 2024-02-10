import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

class FyExpansionTile extends StatelessWidget {
  final String question;
  final Widget answer;
  const FyExpansionTile({
    required this.answer,
    required this.question,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: context.fyColors.textFiveColor,
          width: 0.5,
        )),
        color: Colors.transparent,
      ),
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ExpansionTile(
        title: Text(
          question,
          style: context.textTheme.headlineLarge!
              .copyWith(color: context.fyColors.textTenColor),
        ),
        collapsedBackgroundColor: Colors.transparent,
        tilePadding: EdgeInsets.symmetric(
          horizontal: context.fySpacing.rightLeftPadding.toDouble(),
        ),
        backgroundColor: Colors.transparent,
        children: [
          Divider(
            indent: 16,
            endIndent: 52,
            height: 1,
            color: context.fyColors.textFourColor,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(alignment: Alignment.topLeft, child: answer),
          ),
        ],
      ),
    );
  }
}
