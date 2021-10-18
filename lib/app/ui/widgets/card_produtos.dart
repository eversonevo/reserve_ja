import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/models/product.dart';
import 'package:reserve_ja/app/modules/products/products_controller.dart';

class CardProdutos extends GetView<ProductsController> {
  Product _product;

  CardProdutos({required Product product, Key? key})
      : _product = product,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.productSelecioned(_product),
      child: PhysicalModel(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: BoxShape.rectangle,
        elevation: 10,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 109,
          height: 146,
          child: Center(
            child: Column(
              children: [
                Text('Título: ${_product.title}'),
                Text('Descrição: ${_product.description}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
return Card(
      elevation: 2,
      child: ClipPath(
        child: Container(
          width: 109,
          height: 146,
          decoration: const BoxDecoration(
              borderRadius: ,
              border:
                  Border(right: BorderSide(color: Colors.black26, width: 5))),
        ),
        clipper: ShapeBorderClipper(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
      ),
    ); */
