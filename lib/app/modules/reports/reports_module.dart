import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:reserve_ja/app/modules/module.dart';
import 'package:reserve_ja/app/modules/reports/reports_bindings.dart';
import 'package:reserve_ja/app/modules/reports/reports_page.dart';

class ReportsModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/relatorios',
      page: () => const ReportsPage(),
      binding: ReportsBindings(),
    )
  ];
}
