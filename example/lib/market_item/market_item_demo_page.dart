import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class MarketItemDemoPage extends StatefulWidget {
  const MarketItemDemoPage({Key? key}) : super(key: key);

  @override
  State<MarketItemDemoPage> createState() => _MarketItemDemoPageState();
}

class _MarketItemDemoPageState extends State<MarketItemDemoPage> {
  double cornerRadius = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Corner Radius: ${cornerRadius.toStringAsFixed(2)}'),
                  Expanded(
                      child: Slider(
                    value: cornerRadius,
                    onChanged: (value) {
                      setState(
                        () {
                          cornerRadius = value;
                        },
                      );
                    },
                    min: 0,
                    max: 20,
                  ))
                ],
              ),
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
                      cornerRadius: cornerRadius,
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
                      cornerRadius: cornerRadius,
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
                      cornerRadius: cornerRadius,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
