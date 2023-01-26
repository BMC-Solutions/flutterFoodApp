import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Product {
  String? imageUrl;
  String? productTitle;
  String? productSubtitle;

  Product();

  Product.insert({
    required this.imageUrl,
    required this.productTitle,
    required this.productSubtitle,

});

  List<Product> getProductList(){
    return [
      Product.insert(
          imageUrl: 'assets/images/shoes_3.png',
          productTitle: 'Nike Blazer Mid 77',
          productSubtitle: '\$79,0'),
      Product.insert(
          imageUrl: 'assets/images/shoes_1.png',
          productTitle: 'Nike Blazer Mid 78',
          productSubtitle: '\$70,0'),
      Product.insert(
          imageUrl: 'assets/images/shoes_8.png',
          productTitle: 'Nike Blazer Mid 79',
          productSubtitle: '\$80,0'),
      Product.insert(
          imageUrl: 'assets/images/shoes_2.png',
          productTitle: 'Nike Blazer Mid 89',
          productSubtitle: '\$90,0'),
    ];
  }
}


