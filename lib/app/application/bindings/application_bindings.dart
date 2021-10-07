import 'package:get/get.dart';
import 'package:reserve_ja/app/application/auth/auth_service.dart';
import 'package:reserve_ja/app/repository/login/login_repository.dart';
import 'package:reserve_ja/app/repository/login/login_repository_impl.dart';
import 'package:reserve_ja/app/services/login/login_service.dart';
import 'package:reserve_ja/app/services/login/login_service_impl.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        fenix: true);

    // inicializa o serviço do verificacao de autenticação pelo service
    Get.put(AuthService()).init();
  }
}
