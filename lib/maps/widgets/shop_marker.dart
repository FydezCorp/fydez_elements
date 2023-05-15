part of '../mbl_marker_widget.dart';

class _ShopMarker extends StatelessWidget {
  const _ShopMarker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Image.asset(
        'assets/map_elements/shop_marker.png',
        package: packageName,
      ),
    );
  }
}
