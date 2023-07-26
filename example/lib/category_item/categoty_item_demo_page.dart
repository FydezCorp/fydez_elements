import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class CategoryItemDemoPage extends StatefulWidget {
  const CategoryItemDemoPage({Key? key}) : super(key: key);

  @override
  State<CategoryItemDemoPage> createState() => _CategoryItemDemoPageState();
}

class _CategoryItemDemoPageState extends State<CategoryItemDemoPage> {
  double cornerRadius = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Text('Corner Radius: ${cornerRadius.toStringAsFixed(2)}'),
                  Expanded(
                      child: Slider(
                    value: cornerRadius,
                    onChanged: (value) {
                      setState(() {
                        cornerRadius = value;
                      });
                    },
                    min: 0,
                    max: 30,
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FyCategoryItem.create(
                  context,
                  name: 'name',
                  imageUrl:
                      'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
                  onTap: () {},
                  cornerRadius: cornerRadius,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FyCategoryItem.create(
                  context,
                  name: 'name',
                  imageUrl:
                      'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
                  onTap: () {},
                  cornerRadius: cornerRadius,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
