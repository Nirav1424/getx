// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/Product.dart';

class CardController extends GetxController {
  final _products = {}.obs;
  RxInt _likes = 0.obs;
  get likes => _likes;

  @override
  void onInit() {
    super.onInit();
  }

  addLike() {
    likes.value = likes.value + 1;
    update();
  }

  unlike() {
    likes.value = likes - 1;
  }

  // Rx<RxList<Product>> _product = RxList<Product>().obs;
  final RxList<dynamic> _product = [].obs;
  get cardItem => _product;

  final isliked = false.obs;

  double get totalPrice => _product.fold(0, (sum, item) => sum + item.Price);

  var fav_list = <Product>[].obs;

  void addToFavItem(Product product) {
    if (!fav_list.contains(product)) {
      fav_list.add(product);
    } else {
      fav_list.remove(product);
    }
  }

  double get total => totalPrice + 18;

  void addProduct(Product product) {
    _product.add(product);
    // if (_products.containsKey(product)) {
    //   _products[product] += 1;
    // } else {
    //   _products[product] = 1;
    // }

    Get.snackbar(
      "Product added",
      "${product.ProductName} add to cart screen",
      snackPosition: SnackPosition.BOTTOM,
// backgroundColor: Colors.transparent,
      // backgroundColor: Colors.green,
      colorText: Colors.green,
      icon: Icon(
        Icons.add_shopping_cart_rounded,
        color: Colors.green,
      ),
      duration: Duration(seconds: 1),
    );
  }

//   List<String> search = [];
// final  searchs = Product.where
//   List<String> item = ['nirav', 'nikunj', 'lala', 'j', 'aniket'];
// List<String> searchn =[];
//    searchn = item.where((element) => element.contains('a'));

  void removeProduct(Product product) {
    _product.remove(product);
  }

  int get count => _product.length;
}
