import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:reserve_ja/app/modules/reports/reports_controller.dart';

class ReportsPage extends GetView<ReportsController> {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RelatoriosPage'),
      ),
      body: Container(child: Text("Relatorios")),
    );
  }
}
