import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/ui/theme_extensions.dart';

class BodyLogin extends StatelessWidget {
  BodyLogin({required double width, Key? key})
      : _width = width,
        super(key: key);

  double _width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: (_width - _width * .95) / 2,
      child: Container(
        width: _width * .95,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 90,
              ),
              // ignore: prefer_const_constructors
              Material(
                // ignore: prefer_const_constructors
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: context.themeCinzaTextField)),
                      fillColor: Colors.white,
                      filled: true,
                      icon: const Icon(Icons.person),
                      hintText: 'Login'),
                ),
              ),
              // ignore: prefer_const_constructors
              Material(
                // ignore: prefer_const_constructors
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: context.themeCinzaTextField)),
                      fillColor: Colors.white,
                      filled: true,
                      // border: InputBorder.none,
                      icon: const Icon(Icons.password),
                      suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                      hintText: 'Senha'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Material(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "Esqueci a senha",
                      style: TextStyle(
                        color: context.themeCinzaTextField,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
class InputBorder{
    InputBorder color{
      return 
    }
}
*/


/*

Container(
              padding: const EdgeInsets.only(left: 8, right: 8),
              width: 260,
              height: 50,
              color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: const Icon(
                          Icons.person,
                          color: Color(0xffd0aaaa),
                          size: 22,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Material(
                        color: Colors.transparent,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Color(0xffd0aaaa),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 260,
                    height: 1,
                    color: const Color(0xffd0aaaa),
                  ),
                ],
              ),
            ),

*/