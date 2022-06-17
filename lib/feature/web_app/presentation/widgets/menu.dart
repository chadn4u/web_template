import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/core/service/navigationService.dart';
import 'package:web_template/feature/web_app/controller/menuController.dart';
import 'package:web_template/route/route.dart';
import 'package:web_template/utils/const.dart';

import '../locator.dart';

class Menu extends GetResponsiveView<MenuController> {
  Menu({Key? key}) : super(key: key);

  Widget _getCategoryWidget(Map<String, dynamic> data, BuildContext ctx) {
    List<Map<String, dynamic>> dataChild = [];
    if (data["child"] != null) {
      dataChild.addAll(data["child"]);
    }
    return data["child"] != null
        ? Theme(
            data: Theme.of(ctx).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
                initiallyExpanded: true,
                title: SelectableText(data["title"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        letterSpacing: 0.53,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto-Bold')),
                children: List<Widget>.generate(
                    dataChild.length,
                    (index) => Obx(
                          () => Material(
                            color: (controller
                                        .controllerHome.titleSelected.value ==
                                    dataChild[index]["titleChild"])
                                ? Colors.grey.withOpacity(0.2)
                                : backgroundColorMenu,
                            child: InkWell(
                              hoverColor: Colors.grey.withOpacity(0.2),
                              onTap: () {
                                controller.controllerHome.titleSelected.value =
                                    dataChild[index]["titleChild"];
                                locator<NavigationService>().navigateTo(
                                    dataChild[index]["route"],
                                    args: {
                                      "data": dataChild[index]["titleChild"]
                                    });

                                if (screen.isPhone) {
                                  if (controller.controllerHome.scaffoldKey
                                      .currentState!.isDrawerOpen) {
                                    controller.controllerHome.scaffoldKey
                                        .currentState!
                                        .closeDrawer();
                                  }
                                }
                              },
                              child: Container(
                                  color: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 5,
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.fromLTRB(
                                              1, 10, 10, 10),
                                          color: controller.controllerHome
                                                      .titleSelected ==
                                                  dataChild[index]["titleChild"]
                                              ? mainColor
                                              : Colors.transparent,
                                          child: const Opacity(
                                              opacity: 0.0,
                                              child: SelectableText('1'))),
                                      Expanded(
                                          child: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 10, 10),
                                        child: SelectableText(
                                            dataChild[index]["titleChild"],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                letterSpacing: 0.53,
                                                fontFamily: 'Roboto-Bold')),
                                      ))
                                    ],
                                  )),
                            ),
                          ),
                        ))),
          )
        : Obx(
            () => Material(
              color: (controller.controllerHome.titleSelected == data["title"])
                  ? Colors.grey.withOpacity(0.2)
                  : backgroundColorMenu,
              child: InkWell(
                hoverColor: Colors.grey.withOpacity(0.2),
                onTap: () {
                  controller.controllerHome.titleSelected.value = data["title"];
                  if (controller.controllerHome.titleSelected.value == "Home") {
                    locator<NavigationService>()
                        .navigateTo(AppRoutes.HOMEROUTE);
                  } else {
                    locator<NavigationService>().navigateTo(data["route"],
                        args: {"data": data["title"]});
                  }

                  if (screen.isPhone) {
                    if (controller.controllerHome.scaffoldKey.currentState!
                        .isDrawerOpen) {
                      controller.controllerHome.scaffoldKey.currentState!
                          .closeDrawer();
                    }
                  }
                },
                child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                            width: 5,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.fromLTRB(1, 10, 10, 10),
                            color: controller.controllerHome.titleSelected ==
                                    data["title"]
                                ? mainColor
                                : Colors.transparent,
                            child: const Opacity(
                                opacity: 0.0, child: SelectableText('1'))),
                        Expanded(
                            child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: SelectableText(data["title"],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  letterSpacing: 0.53,
                                  fontFamily: 'Roboto-Bold',
                                  fontWeight: FontWeight.bold)),
                        ))
                      ],
                    )),
              ),
            ),
          );
  }

  @override
  Widget desktop() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) =>
            _getCategoryWidget(controller.data[index], context),
        itemCount: controller.data.length,
      ),
    );
  }

  @override
  Widget phone() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) =>
                _getCategoryWidget(controller.data[index], context),
            itemCount: controller.data.length,
          ),
        ),
        const Divider(
          color: colorBlack,
          thickness: 0.5,
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.fromLTRB(24, 10, 0, 10),
              child: SelectableText('V 1.0.0',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: mainColor,
                      fontSize: fontSizeTitleAppBarSmall,
                      letterSpacing: 0.53,
                      fontFamily: 'Roboto-Bold'))),
        ),
      ],
    );
  }
}
