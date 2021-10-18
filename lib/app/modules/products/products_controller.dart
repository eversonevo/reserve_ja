import 'package:get/get.dart';
import 'package:reserve_ja/app/models/product.dart';

class ProductsController extends GetxController {
  List<Product> products = [];
  final productSelected = Rxn<Product>().obs;

  @override
  void onInit() {
    super.onInit();

    Product p1 = Product(id: '1', title: 'camisa', description: 'camisa polo');
    Product p2 =
        Product(id: '2', title: 'calça', description: 'calça apertada');
    Product p3 = Product(id: '3', title: 'blusa', description: 'blusa de lã');
    Product p4 = Product(id: '4', title: 'boné', description: 'boné aba reta');
    Product p5 = Product(id: '5', title: 'meia', description: 'meia branca');

    products.add(p1);
    products.add(p2);
    products.add(p3);
    products.add(p4);
    products.add(p5);
  }

  void productSelecioned(Product? product) {
    productSelected.value = product as Rxn<Product>;
    print("aaaa ${product?.title}");
  }
}
