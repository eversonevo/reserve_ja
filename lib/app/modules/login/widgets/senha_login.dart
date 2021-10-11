import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SenhaLogin extends StatelessWidget {
  const SenhaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 60,
          ),
          Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              Container(
                color: Colors.amber,
                width: 260,
                height: 50,
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.pink,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        ),
                        Container(
                          width: 260,
                          height: 1,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text('teste 3'),
        ],
      ),
    );
  }
}


/*

             Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const FlutterLogo(size: 22),
                ),
              ),
              SizedBox(
                width: 147,
                height: 31,
                child: Text(
                  "Senha",
                  style: TextStyle(
                    color: Color(0xffd0aaaa),
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                width: 16,
                height: 16,
                padding: const EdgeInsets.symmetric(
                  vertical: 3,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 16,
                      height: 11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const FlutterLogo(size: 11),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 147,
                  height: 31,
                  child: Text(
                    "Esqueci a senha",
                    style: TextStyle(
                      color: Color(0xffd0aaaa),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),


*/