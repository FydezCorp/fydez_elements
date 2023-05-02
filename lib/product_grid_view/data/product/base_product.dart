import 'package:flutter/material.dart';
import 'package:fydez_elements/product_grid_view/data/product/badge.dart';
import 'package:fydez_elements/product_grid_view/data/product/base_variation.dart';

abstract class BaseProduct {
  final int id;
  final String name;
  final String image;
  final String price;
  final String finalPrice;
  final List<BaseVariation> variations;
  final Badge badge;

  BaseProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.finalPrice,
    required this.variations,
    required this.badge,
  });
}

class SampleProduct extends BaseProduct {
  SampleProduct({
    required super.id,
    required super.name,
    required super.image,
    required super.price,
    required super.finalPrice,
    required super.variations,
    required super.badge,
  });

  static List<SampleProduct> mockProducts() {
    return [
      SampleProduct(
        id: 1,
        name: 'Product 1',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 2,
        name: 'Product 2',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 3,
        name: 'Product 3',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [
          SampleVariation(
            id: 1,
            color: const Color(0xFF000000),
          ),
        ],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 4,
        name: 'Product 4',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 5,
        name: 'Product 5',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 6,
        name: 'Product 6',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 7,
        name: 'Product 7',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 8,
        name: 'Product 8',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 9,
        name: 'Product 9',
        image: '',
        price: '100',
        finalPrice: '90',
        variations: [
          SampleVariation(
            id: 1,
            color: const Color(0xFF000000),
          ),
          SampleVariation(
            id: 2,
            color: const Color(0xFF000000),
          ),
          SampleVariation(
            id: 3,
            color: const Color(0xFF000000),
          ),
        ],
        badge: Badge(
          text: 'New',
          color: const Color(0xFF000000),
        ),
      ),
    ];
  }
}
