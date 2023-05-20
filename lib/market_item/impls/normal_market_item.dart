import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/image/fy_network_image.dart';
import 'package:gap/gap.dart';

import '../market_item_factory.dart';

class NormalStoreItem implements MarketItemFactory {
  @override
  Widget build({
    Key? key,
    required String distance,
    required bool isFindInApp,
    required String name,
    required String imageUrl,
    required String address,
    required bool availability,
    required VoidCallback? onTap,
    required double borderRadius,
  }) {
    return NormalStoreItemWidget(
      distance: distance,
      isFindInApp: isFindInApp,
      name: name,
      imageUrl: imageUrl,
      address: address,
      availability: availability,
      onTap: onTap,
      key: key,
      borderRadius: borderRadius,
    );
  }
}

class NormalStoreItemWidget extends StatelessWidget {
  final String distance;
  final bool isFindInApp;
  final String name;
  final String imageUrl;
  final String address;
  final bool availability;
  final VoidCallback? onTap;
  final double borderRadius;
  const NormalStoreItemWidget({
    super.key,
    required this.distance,
    required this.isFindInApp,
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.availability,
    this.onTap,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          height: 70,
          width: 250,
          decoration: BoxDecoration(
            border:
                Border.all(color: context.fyColors.textTwoColor, width: 0.5),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(borderRadius * 0.6),
                  child: FyNetworkImage(
                    url: imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: context.fyColors.textTenColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(2),
                      Text(
                        address,
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: context.fyColors.textSevenColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Gap(2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            distance.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(color: context.fyColors.textSixColor),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Visibility(
                            visible: isFindInApp,
                            child: Row(
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: availability
                                          ? const Color(0xff00BA1E)
                                          : Theme.of(context)
                                              .colorScheme
                                              .error),
                                ),
                                const Gap(6),
                                Text(availability ? 'Available' : 'Unavailable',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: availability
                                                ? const Color(0xff00BA1E)
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .error)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
