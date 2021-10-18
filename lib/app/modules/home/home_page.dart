import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reserve_ja/app/modules/compras/compras_bindings.dart';
import 'package:reserve_ja/app/modules/compras/compras_page.dart';
import 'package:reserve_ja/app/modules/home/home_controller.dart';
import 'package:reserve_ja/app/modules/products/products_bindings.dart';
import 'package:reserve_ja/app/modules/products/products_page.dart';
import 'package:reserve_ja/app/modules/reports/reports_bindings.dart';
import 'package:reserve_ja/app/modules/reports/reports_page.dart';
import 'package:reserve_ja/app/ui/theme_extensions.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          // context.themeRed foi criado uma função somente para cores do app
          // application / ui / themeextension quem for BuildCOntext pode enxergar
          selectedItemColor: context.themeBlue,
          unselectedItemColor: Colors.grey,
          onTap: controller.goToPage,
          currentIndex: controller.pageIndex,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long), label: 'Relatórios'),
            BottomNavigationBarItem(
                icon: Icon(Icons.compare_arrows_rounded), label: 'Compras'),
            BottomNavigationBarItem(
                icon: Icon(Icons.logout_outlined), label: 'Sair'),
          ],
        );
      }),

      /* ------ */
      body: Navigator(
        initialRoute: '/products',
        key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
        onGenerateRoute: (settings) {
          //print('xxxxx' + settings.name.toString());
          switch (settings.name) {
            case '/products':
              return GetPageRoute(
                settings: settings,
                page: () => const ProductsPage(),
                binding: ProductsBindings(),
              );
            case '/relatorios':
              return GetPageRoute(
                settings: settings,
                page: () => const ReportsPage(),
                binding: ReportsBindings(),
              );
            case '/compras':
              return GetPageRoute(
                settings: settings,
                page: () => const ComprasPage(),
                binding: ComprasBindings(),
              );
          }

          return null;
        },
      ),
    );
  }
}
   /*
   
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          // context.themeRed foi criado uma função somente para cores do app
          // application / ui / themeextension quem for BuildCOntext pode enxergar
          selectedItemColor: context.themeBlue,
          unselectedItemColor: Colors.grey,
          onTap: controller.goToPage,
          currentIndex: controller.pageIndex,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Filmes'),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), label: 'Favoritos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.logout_outlined), label: 'Sair'),
          ],
        );

/*
      body: Stack(
        children: [
          Container(
            child: Center(
                child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                HomeOurProducts(),
                const SizedBox(
                  height: 1,
                ),
                HomeOurOffers(),
              ],
            )),
            color: Colors.amber,
          ),
          Positioned(
            top: 150,
            right: 0,
            child: InkWell(
              onTap: () {
                print('mennnuuu');
              },
              child: Icon(Icons.menu),
            ),
          ),
        ],
      ),
    );*/
      }),
      body: Navigator(
        initialRoute: '/home',
        key: Get.nestedKey(HomeController.NAVIGATOR_KEY),
        onGenerateRoute: (settings) {
          //print('xxxxx' + settings.name.toString());
          switch (settings.name) {
            case '/products':
              return GetPageRoute(
                settings: settings,
                page: () => const ProductsPage(),
                binding: ProductsBindings(),
              );
            case '/favorites':
              return GetPageRoute(
                settings: settings,
                page: () => const ProductsPage(),
                binding: ProductsBindings(),
              );
          }

          return null;
        },
      ),
    );
  }
}
*/