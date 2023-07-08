import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class DialogContainer extends StatelessWidget {
  final Widget child;
  final double cornerRadius;
  const DialogContainer({
    required this.child,
    required this.cornerRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cornerRadius),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(FyIcon(context).popUpClose)),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: child,
          ),
        ],
      ),
    );
  }
}
