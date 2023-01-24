import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class product{
   IconData favorite;
   String imageUrl;
   String productTitle;
   String productSubtitle;

    product({required this.favorite,
    required this.imageUrl,
    required this.productTitle,
    required this.productSubtitle});
}


List<product> productList = [
   product(
      favorite: Icons.favorite_border,
      imageUrl:   'assets/images/shoes_3.png',
      productTitle: 'Nike Blazer Mid 77',
      productSubtitle: '\$79,0'
   ),
   product(
      favorite: Icons.favorite_border,
      imageUrl: 'assets/images/shoes_1.png',
      productTitle: 'Nike Blazer Mid 78',
      productSubtitle: '\$70,0'
   ),
   product(
      favorite: Icons.favorite_border,
      imageUrl: 'assets/images/shoes_8.png',
      productTitle: 'Nike Blazer Mid 79',
      productSubtitle: '\$80,0'
   ),
   product(
      favorite: Icons.favorite_border,
      imageUrl: 'assets/images/shoes_2.png',
      productTitle: 'Nike Blazer Mid 89',
      productSubtitle: '\$90,0'
   ),
];
