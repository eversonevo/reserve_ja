import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/modules/products/products_controller.dart';
import 'package:reserve_ja/app/ui/widgets/card_produtos.dart';

class HomeOurProducts extends GetView<ProductsController> {
  const HomeOurProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Nossos produtos',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 146,
            child: ListView.builder(
                shrinkWrap:
                    true, // recalcula o listView toda vez q abre tela, tem que usar quando está dentro de um column
                scrollDirection: Axis.horizontal,
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardProdutos(
                      product: controller.products[index],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
