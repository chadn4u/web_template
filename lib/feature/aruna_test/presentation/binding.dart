import 'package:get/get.dart';
import 'package:web_template/feature/aruna_test/controller/appBarController.dart';
import 'package:web_template/feature/aruna_test/controller/menuController.dart';

import '../controller/homeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AppBarController>(() => AppBarController());
    Get.lazyPut<MenuController>(() => MenuController());
  }
}
