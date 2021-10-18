import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/ui/theme_extensions.dart';

class TopoLogin extends StatelessWidget {
  const TopoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: Get.width,
          height: 167,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: context.themeBlue,
          ),
        ),
        const SizedBox(height: 40),
        const Positioned(
          top: 30,
          right: 0,
          child: Text(
            "Reserve Já!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        const Positioned(
          right: 0,
          top: 45,
          child: Text(
            "Concretizando negócios.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
