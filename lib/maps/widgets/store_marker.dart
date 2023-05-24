part of '../fy_marker_widget.dart';

class _StoreMarker extends StatelessWidget {
  final String name;
  final String imagePath;
  const _StoreMarker({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //     padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(8.0),
        //       border: Border.all(
        //           color: context.mblColors.textNineColor, width: 1.5),
        //       color: context.colorScheme.surface,
        //     ),
        //     child: Text(name)),
        // const Gap(5.0),
        Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border:
                Border.all(color: context.fyColors.textNineColor, width: 1.5),
            color: context.colorScheme.surface,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: imagePath,
                width: 16,
                height: 16,
                // package: packageName,
              ),
              // const Gap(5.0),
              const SizedBox(width: 5.0),
              Text(name),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(color: context.fyColors.textNineColor),
          width: 1.5,
          height: 16,
        )
      ],
    );
  }
}
