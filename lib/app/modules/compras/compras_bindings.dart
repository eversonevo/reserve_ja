import 'package:get/get.dart';
import './compras_controller.dart';

class ComprasBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ComprasController());
    }
}