import 'package:flutter/material.dart';
import 'package:fydez_elements/general_data/product/base_variation.dart';

import 'base_badge.dart';

abstract class BaseProduct {
  final int id;
  final String name;
  final String image;
  final String price;
  final String finalPrice;
  final List<BaseVariation>? variations;
  final BaseBadge? badge;

  BaseProduct({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.finalPrice,
    this.variations,
    this.badge,
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
    super.badge,
  });

  static List<SampleProduct> mockProducts() {
    return [
      SampleProduct(
        id: 1,
        name:
            'Product 1 Product 1 Product 1 Product 1 Product 1 Product 1 Product 1 Product 1',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$100',
        variations: [],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 2,
        name: 'Product 2',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$90',
        variations: [],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 3,
        name: 'Product 3',
        image:
            'https://dkstatics-public.digikala.com/digikala-adservice-banners/f1105959092c908f462c92453d098429f1c1744a_1682746872.jpg?x-oss-process=image/quality,q_95/format,webp',
        price: '\$100',
        finalPrice: '\$90',
        variations: [
          SampleVariation(
            id: 1,
            color: const Color(0xFF000000),
          ),
        ],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 4,
        name: 'Product 4',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$100',
        variations: [],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 5,
        name: 'Product 5',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$90',
        variations: [],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 6,
        name: 'Product 6',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$90',
        variations: [],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 7,
        name: 'Product 7',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$90',
        variations: [],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 8,
        name: 'Product 8',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$90',
        variations: [],
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
      SampleProduct(
        id: 9,
        name: 'Product 9',
        image:
            'https://dkstatics-public.digikala.com/digikala-products/57c190160cf59aebdb94a0ec3a97feac84da013c_1681032738.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/format,webp/quality,q_80',
        price: '\$100',
        finalPrice: '\$90',
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
        badge: BaseBadge(
          text: 'New',
          textColor: Colors.white,
          color: const Color(0xFF000000),
        ),
      ),
    ];
  }
}
