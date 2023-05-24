import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ModalCloseContainer extends StatelessWidget {
  const ModalCloseContainer({
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
          padding: const EdgeInsets.all(24.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(cornerRadius),
              topLeft: Radius.circular(cornerRadius),
            ),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                top: -10,
                right: -10,
                child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Iconsax.close_circle)),
              ),
              child,
            ],
          ),
        ),
      ],
    );
  }
}
