import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:reserve_ja/app/modules/module.dart';
import 'package:reserve_ja/app/modules/products/products_bindings.dart';
import 'package:reserve_ja/app/modules/products/products_page.dart';

class ProductsModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/products',
      page: () => const ProductsPage(),
      binding: ProductsBindings(),
    )
  ];
}
