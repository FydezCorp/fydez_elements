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
        border: Border.all(
          color: context.fyColors.textFiveColor,
          width: 0.5,
        ),
        color: Colors.transparent,
      ),
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ExpansionTile(
        title: Text(question),
        collapsedBackgroundColor: Colors.transparent,
        tilePadding: const EdgeInsets.symmetric(horizontal: 16.0),
        backgroundColor: Colors.transparent,
        children: [
          const Divider(
            indent: 16,
            endIndent: 52,
            height: 1,
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
