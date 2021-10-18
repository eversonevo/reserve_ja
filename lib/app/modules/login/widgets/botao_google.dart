import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/ui/theme_extensions.dart';

class BotaoGoogle extends StatelessWidget {
  const BotaoGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 550,
      left: (Get.width - 325) / 2,
      // ignore: avoid_unnecessary_containers
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 325,
        height: 58,
        color: Colors.white,
        child: Row(
          children: [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            SizedBox(
              width: 280,
              height: 58,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  //shadowColor: Colors.green
                ),
                child: Text(
                  'Acesse com sua conta Google',
                  style: TextStyle(
                    color: context.themeBlue,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
