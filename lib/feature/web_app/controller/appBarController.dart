import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/feature/web_app/controller/homeController.dart';

class AppBarController extends GetxController {
  bool isMobile = false;
  late bool isMaxxSize;
  bool isHoveringDownloadButton = false;
  bool isHoveringPubDevButton = false;
  HomeController controllerHome = Get.find<HomeController>();
  bool isDrawerOpen = false;

  final ScrollController controllerScroll = ScrollController();
  @override
  void onInit() {
    super.onInit();
    isMaxxSize = MediaQuery.of(Get.context!).size.width >= 1000;
  }
}
