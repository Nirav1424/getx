import 'package:get/get.dart';

// import '../Models/Product.dart';

// ignore: camel_case_types
class nevigationController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  // static List<Product> dispalyList = List.from(Product.products);

  // @override
  // void onInit() {
  //   dispalyList = Product.products;
  //   super.onInit();
  // }

  // @override
  // void onClose() {
  //   // TODO: implement onClose
  //   super.onClose();
  // }

  // static void dispalyFilter(String value) {
  //   dispalyList = Product.products
  //       .where((element) =>
  //           element.ProductName.toLowerCase().contains(value.toLowerCase()))
  //       .toList();
  // }

  // static Iterable<Product> search = [];
  // static searchFiler(String value) {
  //   if (!value.isEmpty) {
  //     search = Product.products.where(
  //         (element) => element.ProductName.toLowerCase().contains(value));
  //   }
  // }
}
