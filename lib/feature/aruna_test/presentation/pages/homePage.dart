import 'package:web_template/feature/aruna_test/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/feature/aruna_test/presentation/widgets/appBar.dart';
import 'package:web_template/feature/aruna_test/presentation/widgets/homeBody.dart';
import 'package:web_template/feature/aruna_test/presentation/widgets/menu.dart';
import 'package:web_template/utils/const.dart';

class HomePage extends GetResponsiveView<HomeController> {
  @override
  Widget desktop() {
    // category = WidgetCategory.fromJson(data);
    // print(MediaQuery.of(context).size.width);
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(GetPlatform.isMobile
                ? preferredSizeHeightMobile
                : preferredSizeHeightWeb),
            child: AppBarHelper()),
        backgroundColor: backgroundColor,
        body: Container(
          height: MediaQuery.of(Get.context!).size.height,
          width: MediaQuery.of(Get.context!).size.width,
          decoration: const BoxDecoration(color: transparentColor),
          child: HomeBody(),
        ));
  }

  @override
  Widget phone() {
    // category = WidgetCategory.fromJson(data);
    // print(MediaQuery.of(context).size.width);
    return Scaffold(
        key: controller.scaffoldKey,
        drawer: Drawer(
          child: Menu(),
        ),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(GetPlatform.isMobile
                ? preferredSizeHeightMobile
                : preferredSizeHeightWeb),
            child: AppBarHelper()),
        backgroundColor: backgroundColor,
        body: Container(
          height: MediaQuery.of(Get.context!).size.height,
          width: MediaQuery.of(Get.context!).size.width,
          decoration: const BoxDecoration(color: transparentColor),
          child: HomeBody(),
        ));
  }
}
