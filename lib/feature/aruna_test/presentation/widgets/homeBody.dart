import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/core/service/navigationService.dart';
import 'package:web_template/feature/aruna_test/controller/homeController.dart';
import 'package:web_template/feature/aruna_test/presentation/widgets/menu.dart';
import 'package:web_template/route/route.dart';

import '../locator.dart';

class HomeBody extends GetResponsiveView<HomeController> {
  @override
  Widget desktop() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(Get.context!).size.width * 0.2,
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(24, 10, 0, 10),
                  child: Text('Menu',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          letterSpacing: 0.53,
                          fontFamily: 'Roboto-Bold'))),
              Menu()
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
