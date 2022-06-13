import 'package:get/get.dart';
import 'package:web_template/feature/aruna_test/controller/homeController.dart';

class MenuController extends GetxController {
  // late Map<String, dynamic> data;
  HomeController controllerHome = Get.find<HomeController>();
  @override
  void onInit() {
    super.onInit();
    // data = controllerHome.data;
  }
}
