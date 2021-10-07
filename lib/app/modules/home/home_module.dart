import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:reserve_ja/app/modules/home/home_bindings.dart';
import 'package:reserve_ja/app/modules/home/home_page.dart';
import 'package:reserve_ja/app/modules/module.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBindings(),
    )
  ];
}
