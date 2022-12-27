// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, non_constant_identifier_names, must_be_immutable, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/navigationController.dart';
import '../Controller/CardController.dart';
import '../Models/Product.dart';
import 'AddItem.dart';
import 'FullPage.dart';

class ShopingPage extends StatelessWidget {
  TextEditingController SearchController = TextEditingController();
  final cardController = Get.put(CardController());

  ShopingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruite Apps'),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 8, right: 28),
            child: Badge(
              child: IconButton(
                  onPressed: () {
                    Get.to(AddItemPage());
                  },
                  icon: Icon(Icons.shopping_cart, size: 30)),
              label: GetX<CardController>(builder: (controller) {
                return Text(controller.count.toString());
              }),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: TextFormField(
            //       controller: SearchController,
            //       decoration: const InputDecoration(
            //         hintText: 'Search',
            //         border: OutlineInputBorder(),
            //       ),
            //       onChanged: (String value) {
            //         // nevigationController.searchFiler(value);
            //         // nevigationController.search.length;
            //         // print(nevigationController.search.length);
            //       }),
            // ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.60,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4,
                  // mainAxisExtent: 264,
                ),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                itemCount: Product.products.length,
                itemBuilder: (context, index) {
                  if (SearchController.text.isEmpty) {
                    return inkwell(index);
                  } else if (Product.products[index].ProductName
                      .toLowerCase()
                      .contains(SearchController.text.toLowerCase())) {
                    return null;
                  }
                },
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Get.to(AddItemPage());
      //   },
      //   icon: const Icon(
      //     Icons.add_shopping_cart,
      //   ),
      //   label: GetX<CardController>(builder: (controller) {
      //     return Text(controller.count.toString());
      //   }),
      // ),
    );
  }

  inkwell(int index) {
    return InkWell(
      hoverColor: Colors.pink[200],
      onTap: () {
        Get.to(FullPage(
          index: index,
        ));
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: Container(
          height: 350,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(0),
          child: Stack(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Expanded(
                  child: Container(
                    child: Stack(children: [
                      Hero(
                        tag: Product.products[index].id,
                        child: Image.asset(
                          '${Product.products[index].ProductImage}',
                          fit: BoxFit.fill,
                          height: 150,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110.0),
                        child: Obx(
                          () => IconButton(
                              alignment: Alignment.topRight,
                              onPressed: () {
                                cardController
                                    .addToFavItem(Product.products[index]);
                                Product.products[index].isliked.toggle();
                                Product.products[index].isliked.value
                                    ? cardController.addLike()
                                    : cardController.unlike();
                              },
                              icon: Product.products[index].isliked.value
                                  ? Icon(Icons.favorite)
                                  : Icon(Icons.favorite_border)),
                        ),
                      ),
                    ]),
                  ),
                ),
                Text(
                  '${Product.products[index].Price}',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  '${Product.products[index].ProductName}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40)),
                    onPressed: () {
                      cardController.addProduct(Product.products[index]);
                    },
                    child: Text(
                      'add to card',
                      style: TextStyle(fontSize: 15),
                    )),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
