import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagemLogin extends StatelessWidget {
  const ImagemLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      left: (Get.width - 192) / 2,
      child: Container(
        width: 192,
        height: 167,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffacde20),
        ),
      ),
    );
  }
}
