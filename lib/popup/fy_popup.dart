import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class FyPopup {
  static void showPopup(
    BuildContext context, {
    PopupType? type,
    required String title,
    required String subtitle,
    required PopupBG background,

    /// Only works for type A. Dialogs only have close button.
    required PopupHandle handle,
    required bool hasIcon,
    IconData? icon,
  }) {
    final popupType = type ?? PopupType.modal;
    switch (popupType) {
      case PopupType.modal:
        return ModalPopup().showPopup(
          context,
          title: title,
          subtitle: subtitle,
          background: background,
          handle: handle,
          hasIcon: hasIcon,
          icon: icon,
        );
      case PopupType.dialog:
        return DialogPopup().showPopup(
          context,
          title: title,
          subtitle: subtitle,
          background: background,
          handle: handle,
          hasIcon: hasIcon,
          icon: icon,
        );
    }
  }
}

abstract class PopupFactory {
  void showPopup(
    BuildContext context, {
    required String title,
    required String subtitle,
    required PopupBG background,
    required PopupHandle handle,
    required bool hasIcon,
    IconData? icon,
    double corderRadius = 20,

    /// Usually a CTA button.
    Widget? trailing,
  });
}

class ModalPopup implements PopupFactory {
  @override
  void showPopup(BuildContext context,
      {required String title,
      required String subtitle,
      required PopupBG background,
      required PopupHandle handle,
      double corderRadius = 20,
      required bool hasIcon,
      IconData? icon,
      Widget? trailing}) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        enableDrag: true,
        isScrollControlled: true,
        builder: (context) {
          return Wrap(
            children: [
              ModalContainer(
                handle: handle,
                cornerRadius: corderRadius,
                child: const SizedBox(
                  height: 50,
                  child: Text('kir'),
                ),
              ),
            ],
          );
        });
  }
}

class DialogPopup implements PopupFactory {
  @override
  void showPopup(BuildContext context,
      {required String title,
      required String subtitle,
      required PopupBG background,
      required PopupHandle handle,
      double corderRadius = 20,
      required bool hasIcon,
      IconData? icon,
      Widget? trailing}) {
    showDialog(
        context: context,
        builder: (context) {
          return DialogContainer(
            cornerRadius: corderRadius,
            child: Container(),
          );
        });
  }
}

enum PopupBG { normal, blur }

enum PopupHandle { inside, outside, close }

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
          borderRadius: BorderRadius.circular(cornerRadius)),
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
                icon: const Icon(Iconsax.close_circle)),
          ),
          child,
        ],
      ),
    );
  }
}

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

class ModalInsideContainer extends StatelessWidget {
  const ModalInsideContainer({
    Key? key,
    required this.cornerRadius,
    required this.child,
  }) : super(key: key);

  final double cornerRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(cornerRadius),
          topLeft: Radius.circular(cornerRadius),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 5,
            width: 38,
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: const ShapeDecoration(
              color: Color(0xffB4B4B4),
              shape: StadiumBorder(),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

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
