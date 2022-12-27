// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class Product {
  final int id;
  final String ProductName;
  final String ProductImage;
  final String ProductDescription;
  final double Price;

  Product({
    required this.id,
    required this.ProductName,
    required this.ProductImage,
    required this.ProductDescription,
    required this.Price,
  });
  final isliked = false.obs;
  final quantity = 1.obs;

  static List<Product> products = [
     Product(
        id: 1,
        ProductName: 'Oranges',
        ProductImage:
            'assets/orange.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 70),
    Product(
        id: 2,
        ProductName: 'Apples',
        ProductImage:
            'assets/apple.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 50),
    Product(
        id: 3,
        ProductName: 'pominGranet',
        ProductImage:
            'assets/pominGranet.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 90),
    Product(
        id: 4,
        ProductName: 'Graps',
        ProductImage:
            'assets/Graps.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 30),
    Product(
        id: 5,
        ProductName: 'Watermalan',
        ProductImage:
            'assets/Watermalan.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 80),
    Product(
        id: 6,
        ProductName: 'banana',
        ProductImage:
            'assets/banana.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 40),
    Product(
        id: 7,
        ProductName: 'Kivi',
        ProductImage:
            'assets/kivi.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 80),
    Product(
        id: 8,
        ProductName: 'Mango',
        ProductImage:
            'assets/Mango.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 150),
         Product(
        id: 9,
        ProductName: 'stoberi',
        ProductImage: 'assets/stoberi.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 40),
         Product(
        id: 10,
        ProductName: 'naspati',
        ProductImage: 'assets/naspati.jpg',
        ProductDescription: 'hey is product is frist',
        Price: 90),
  ];

  

}


