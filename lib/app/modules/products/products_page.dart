import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:reserve_ja/app/modules/products/widgets/products_our_offers.dart';
import 'package:reserve_ja/app/modules/products/widgets/products_our_products.dart';
import './products_controller.dart';

class ProductsPage extends GetView<ProductsController> {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductsPage'),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
          return true;
        }, //serve para tirar o efeito glow(elástico) da listviw
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  child: Center(
                      child: Column(
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      HomeOurOffers(),
                      const SizedBox(
                        height: 1,
                      ),
                      HomeOurProducts(),
                    ],
                  )),
                  color: Colors.amber,
                ),
                Positioned(
                  top: 150,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      print('mennnuuu');
                    },
                    child: Icon(Icons.menu),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
