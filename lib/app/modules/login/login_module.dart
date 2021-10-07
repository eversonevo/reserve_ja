import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:reserve_ja/app/modules/login/login_bindings.dart';
import 'package:reserve_ja/app/modules/login/login_page.dart';
import 'package:reserve_ja/app/modules/module.dart';

class LoginModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBindings(),
    )
  ];
}
