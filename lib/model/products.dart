import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Product {
  bool   isFavorite = true;
  String? productImageUrl;
  String? productTitle;
  String? productSubtitle;
  List  <String>? productImages;
  double?  productPrice;
  List  <String>? productSizes;
  List  <String>? productPicture;
  int?  productRating;
  Product();

  Product.insert({
    required this.productImageUrl,
    required this.productTitle,
    required this.productSubtitle,
    required this.productImages,
    required this.productPrice,
    required this.productSizes,
    required this.productPicture,
    required this.productRating,

  });
  List<Product> getProductList() {
    return [
      Product.insert(
          productImageUrl: 'assets/images/shoes_3.png',
          productTitle: 'Nike Blazer Mid 01',
          productSubtitle: '\$79,0',
          productImages: ['assets/images/shoes_2.png',
            'assets/images/shoes_1.png',
            'assets/images/shoes_4.png',
            'assets/images/shoes_1.png'],
          productPrice:  79.0,
         productSizes:['34', '35','36','37','38','39'],
         productPicture:['https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
        'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
        'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
        'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Venue/9154/1655441194954/front-left-side-47.jpg?tr=w-375'
         ],
         productRating: 0,
        ),
       Product.insert(
        productImageUrl: 'assets/images/shoes_1.png',
        productTitle: 'Nike Blazer Mid 02',
        productSubtitle: '\$70,0',
         productImages: ['assets/images/shoes_2.png',
           'assets/images/shoes_1.png',
           'assets/images/shoes_4.png',
           'assets/images/shoes_1.png'],
         productPrice:  79.0,
         productSizes:['34', '35','36','37','38','39'],
         productPicture:['https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
           'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
           'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
           'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Venue/9154/1655441194954/front-left-side-47.jpg?tr=w-375'
         ],
         productRating: 0,

       ),
       Product.insert(
          productImageUrl: 'assets/images/shoes_8.png',
          productTitle: 'Nike Blazer Mid 03',
          productSubtitle: '\$80,0',
         productImages: ['assets/images/shoes_2.png',
           'assets/images/shoes_1.png',
           'assets/images/shoes_4.png',
           'assets/images/shoes_1.png'],
         productPrice:  79.0,
         productSizes:['34', '35','36','37','38','39'],
         productPicture:['https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
           'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
           'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
           'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Venue/9154/1655441194954/front-left-side-47.jpg?tr=w-375'
         ],
         productRating: 0,
        ),
       Product.insert(
          productImageUrl: 'assets/images/shoes_2.png',
          productTitle: 'Nike Blazer Mid 04',
          productSubtitle: '\$90,0',
         productImages: ['assets/images/shoes_2.png',
           'assets/images/shoes_1.png',
           'assets/images/shoes_4.png',
           'assets/images/shoes_1.png'],
         productPrice:  79.0,
         productSizes:['34', '35','36','37','38','39'],
         productPicture:['https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
           'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
           'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
           'https://stimg.cardekho.com/images/carexteriorimages/930x620/Hyundai/Venue/9154/1655441194954/front-left-side-47.jpg?tr=w-375'
         ],
         productRating: 0,
       ),
    ];
  }

  isFavoriteToggle(){
   if(isFavorite == true){
     isFavorite = false;
    }else{
     isFavorite = true;
   }
  }
}

