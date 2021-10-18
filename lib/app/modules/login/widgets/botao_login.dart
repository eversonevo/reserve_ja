import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/ui/theme_extensions.dart';

class BotaoLogin extends StatelessWidget {
  const BotaoLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 425,
      left: (Get.width - 175) / 2,
      // ignore: avoid_unnecessary_containers
      child: SizedBox(
        width: 175,
        height: 58,
        child: TextButton(
          onPressed: () {
            Get.toNamed('/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: context.themeBlue,
            elevation: 0,
            //shadowColor: Colors.green
          ),
          child: Text(
            'ENTRAR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
