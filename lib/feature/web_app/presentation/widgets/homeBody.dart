import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/core/service/navigationService.dart';
import 'package:web_template/feature/web_app/controller/homeController.dart';
import 'package:web_template/feature/web_app/presentation/widgets/menu.dart';
import 'package:web_template/route/route.dart';
import 'package:web_template/utils/const.dart';

import '../locator.dart';

class HomeBody extends GetResponsiveView<HomeController> {
  HomeBody({Key? key}) : super(key: key);

  @override
  Widget desktop() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(Get.context!).size.width * 0.2,
          color: backgroundColorMenu,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(24, 10, 0, 10),
                  child: SelectableText('Menu',
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 18,
                          letterSpacing: 0.53,
                          fontFamily: 'Roboto-Bold'))),
              Menu(),
              const Divider(
                color: colorBlack,
                thickness: 0.5,
              ),
              const Padding(
                  padding: EdgeInsets.fromLTRB(24, 10, 0, 10),
                  child: SelectableText('V 1.0.0',
                      style: TextStyle(
                          color: mainColor,
                          fontSize: fontSizeTitleAppBarSmall,
                          letterSpacing: 0.53,
                          fontFamily: 'Roboto-Bold'))),
            ],
          ),
        ),
        Expanded(
          child: Navigator(
            key: locator<NavigationService>().navigatorKey,
            onGenerateRoute: generateRoute,
            initialRoute: AppRoutes.HOMEROUTE,
          ),
        )
      ],
    );
  }

  @override
  Widget phone() {
    return Navigator(
      key: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: AppRoutes.HOMEROUTE,
    );
  }
}
