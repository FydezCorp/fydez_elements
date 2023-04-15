import 'package:flutter/material.dart';

class ModalOutsideContainer extends StatelessWidget {
  const ModalOutsideContainer({
    Key? key,
    required this.cornerRadius,
    required this.child,
  }) : super(key: key);

  final double cornerRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 5,
          width: 38,
          margin: const EdgeInsets.only(bottom: 12),
          decoration: const ShapeDecoration(
              color: Colors.white, shape: StadiumBorder()),
        ),
        Container(
          padding: const EdgeInsets.all(24.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(cornerRadius),
              topLeft: Radius.circular(cornerRadius),
            ),
            color: Colors.white,
          ),
          child: child,
        ),
      ],
    );
  }
}
