import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/ui/theme_extensions.dart';

class FundoLogin extends StatelessWidget {
  FundoLogin({required double width, Key? key})
      : _width = width,
        super(key: key);

  double _width = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: Get.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: context.themeCinzaFundo,
      ),
    );
  }
}
