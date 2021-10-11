import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FundoLogin extends StatelessWidget {
  const FundoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffffefef),
      ),
    );
  }
}
