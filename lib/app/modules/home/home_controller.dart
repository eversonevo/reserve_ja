import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _pageIndex = 0.obs;
  // ignore: constant_identifier_names
  static const NAVIGATOR_KEY = 1;
  // ignore: constant_identifier_names
  static const INDEX_PAGE_EXIT = 3;

  int get pageIndex => _pageIndex.value;

  final _pages = ['/products', '/relatorios', '/compras'];

  void goToPage(int page) {
    _pageIndex(page);

    if (page == INDEX_PAGE_EXIT) {
      //_loginService.logout();
    } else {
      Get.offNamed(_pages[page], id: NAVIGATOR_KEY);
    }

    /* aprimorando o codigo  
    if (page == 1) {
      Get.offAndToNamed('/favorites', id: NAVIGATOR_KEY);
    } else if (page == 0) {
      Get.offAndToNamed('/movies', id: NAVIGATOR_KEY);
    }*/
  }
}
