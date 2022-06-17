import 'package:get/get.dart';
import 'package:web_template/feature/web_app/controller/appBarController.dart';
import 'package:web_template/feature/web_app/controller/dataGridController.dart';
import 'package:web_template/feature/web_app/controller/menuController.dart';

import '../controller/homeController.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AppBarController>(() => AppBarController());
    Get.lazyPut<MenuController>(() => MenuController());
    Get.lazyPut<DataGridsController>(() => DataGridsController());
  }
}
