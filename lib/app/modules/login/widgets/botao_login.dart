import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff999fd9),
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
