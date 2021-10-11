import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      left: (Get.width - 333) / 2,
      child: Container(
        width: 333,
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
                height: 60,
              ),
              // ignore: prefer_const_constructors
              Material(
                // ignore: prefer_const_constructors
                child: TextField(
                  autofocus: true,
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffd0aaaa))),
                      fillColor: Colors.white,
                      filled: true,
                      icon: Icon(Icons.person),
                      hintText: 'Login'),
                ),
              ),
              // ignore: prefer_const_constructors
              Material(
                // ignore: prefer_const_constructors
                child: TextField(
                  decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffd0aaaa))),
                      fillColor: Colors.white,
                      filled: true,
                      // border: InputBorder.none,
                      icon: Icon(Icons.password),
                      hintText: 'Senha'),
                ),
              ),
              SizedBox(
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
                        color: Color(0xffd0aaaa),
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