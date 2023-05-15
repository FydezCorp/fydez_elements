part of '../mbl_marker_widget.dart';

class _CurrentLocationMarker extends StatelessWidget {
  const _CurrentLocationMarker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Image.asset(
        'assets/map_elements/current_location.png',
        package: packageName,
      ),
    );
  }
}
