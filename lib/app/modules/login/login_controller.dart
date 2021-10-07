import 'package:get/get.dart';
import 'package:reserve_ja/app/services/login/login_service.dart';

class LoginController extends GetxController {
  final LoginService _loginService;

  LoginController({required LoginService loginService})
      : _loginService = loginService;
}
