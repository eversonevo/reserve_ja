import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:reserve_ja/app/modules/compras/compras_bindings.dart';
import 'package:reserve_ja/app/modules/compras/compras_page.dart';
import 'package:reserve_ja/app/modules/module.dart';

class ComprasModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/compras',
      page: () => const ComprasPage(),
      binding: ComprasBindings(),
    )
  ];
}
