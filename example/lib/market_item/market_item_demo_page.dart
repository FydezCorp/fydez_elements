import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class MarketItemDemoPage extends StatelessWidget {
  const MarketItemDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  FyMarketItem.create(
                    context,
                    name: 'name',
                    imageUrl:
                        'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
                    address: 'address address address address',
                    distance: 'distance',
                    isFindInApp: true,
                    availability: true,
                    onTap: () {},
                  ),
                  FyMarketItem.create(
                    context,
                    name: 'name',
                    imageUrl:
                        'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
                    address: 'address address address address',
                    distance: 'distance',
                    isFindInApp: true,
                    availability: false,
                    onTap: () {},
                  ),
                  FyMarketItem.create(
                    context,
                    name: 'name',
                    imageUrl:
                        'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
                    address: 'address address address address',
                    distance: 'distance',
                    isFindInApp: false,
                    availability: true,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
