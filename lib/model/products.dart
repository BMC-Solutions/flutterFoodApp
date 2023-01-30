import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Product {
  final IconData icon;
  String? imageUrl;
  String? productTitle;
  String? productSubtitle;

  Product(this.icon);

  Product.insert({
    required this.icon,
    required this.imageUrl,
    required this.productTitle,
    required this.productSubtitle,

});

  List<Product> getProductList(){
    return [
      Product.insert(
          icon: Icons.favorite,
          imageUrl: 'assets/images/shoes_3.png',
          productTitle: 'Nike Blazer Mid 01',
          productSubtitle: '\$79,0'),
      Product.insert(
          icon: Icons.favorite,
          imageUrl: 'assets/images/shoes_1.png',
          productTitle: 'Nike Blazer Mid 02',
          productSubtitle: '\$70,0'),
      Product.insert(
          icon: Icons.favorite,
          imageUrl: 'assets/images/shoes_8.png',
          productTitle: 'Nike Blazer Mid 03',
          productSubtitle: '\$80,0'),
      Product.insert(
          icon: Icons.favorite,
          imageUrl: 'assets/images/shoes_2.png',
          productTitle: 'Nike Blazer Mid 04',
          productSubtitle: '\$90,0'),
    ];

  }
}


