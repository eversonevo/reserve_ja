import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/application/bindings/application_bindings.dart';
import 'package:reserve_ja/app/modules/home/home_module.dart';
import 'package:reserve_ja/app/modules/splash/splash_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reserve Fácil',
      debugShowCheckedModeBanner: false,
      initialBinding: ApplicationBindings(),
      //home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        ...SplashModule().routers,
//        ...LoginModule().routers,
        ...HomeModule().routers,
//        ...MovieDetailModule().routers,
      ],
    );
  }
}
