import 'package:get/get.dart';
import 'package:reserve_ja/app/modules/reports/reports_controller.dart';

class ReportsBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ReportsController());
  }
}
