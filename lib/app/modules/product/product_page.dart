import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './product_controller.dart';

class ProductPage extends GetView<ProductController> {
    
    const ProductPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('ProductPage'),),
            body: Container(),
        );
    }
}