import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:reserve_ja/app/modules/login/widgets/body_login.dart';
import 'package:reserve_ja/app/modules/login/widgets/botao_google.dart';
import 'package:reserve_ja/app/modules/login/widgets/botao_login.dart';
import 'package:reserve_ja/app/modules/login/widgets/fundo_login.dart';
import 'package:reserve_ja/app/modules/login/widgets/imagem_login.dart';
import 'package:reserve_ja/app/modules/login/widgets/topo_login.dart';
import './login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: ListView(
            shrinkWrap: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            scrollDirection: Axis.vertical,
            children: [
              Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  FundoLogin(
                    width: Get.width,
                  ),
                  const TopoLogin(),
                  BodyLogin(
                    width: Get.width,
                  ),
                  const ImagemLogin(),
                  const BotaoLogin(),
                  const BotaoGoogle(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
