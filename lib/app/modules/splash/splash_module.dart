import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:reserve_ja/app/modules/module.dart';
import 'package:reserve_ja/app/modules/splash/splash_bindings.dart';
import 'package:reserve_ja/app/modules/splash/splash_page.dart';

class SplashModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}
