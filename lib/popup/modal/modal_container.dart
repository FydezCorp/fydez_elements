import 'package:flutter/material.dart';

import '../export.dart';
import 'modals/modal_close_container.dart';
import 'modals/modal_inside_container.dart';
import 'modals/modal_outside_container.dart';

class ModalContainer extends StatelessWidget {
  final PopupHandle handle;
  final Widget child;
  final double cornerRadius;
  const ModalContainer({
    required this.handle,
    required this.child,
    required this.cornerRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (handle) {
      case PopupHandle.inside:
        return ModalInsideContainer(cornerRadius: cornerRadius, child: child);
      case PopupHandle.outside:
        return ModalOutsideContainer(cornerRadius: cornerRadius, child: child);
      case PopupHandle.close:
        return ModalCloseContainer(cornerRadius: cornerRadius, child: child);
    }
  }
}
