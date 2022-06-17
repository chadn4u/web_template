import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/utils/const.dart';

import '../../widgets/chart/cartessianChart.dart';
import '../../widgets/chart/pieChart.dart';

class Charts extends GetResponsiveView {
  Charts({Key? key}) : super(key: key);

  @override
  Widget phone() {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(Get.context!).size.width,
            padding: const EdgeInsets.all(20.0),
            height: 150,
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      // border: Border.all(width: 1.0),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                      color: colorWhite),
                  child: const Icon(
                    Icons.bar_chart_sharp,
                    color: colorBlack,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(Get.context!).size.width * 0.3,
                  child: const ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                    title: AutoSizeText('Charts',
                        style: TextStyle(
                            fontSize: fontSizeTitleAppBar,
                            fontFamily: 'HeeboMedium')),
                    subtitle: AutoSizeText('Charts',
                        style: TextStyle(
                            fontSize: fontSizeTitleAppBarSmall,
                            fontFamily: 'HeeboMedium')),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: PieChart(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CartessianChart(),
          )
        ],
      ),
    ));
  }

  @override
  Widget desktop() {
    // final Posts data = Get.arguments['data'];
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(Get.context!).size.width,
            padding: const EdgeInsets.all(20.0),
            height: 150,
            decoration: BoxDecoration(color: Colors.grey.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      // border: Border.all(width: 1.0),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 1),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                      color: colorWhite),
                  child: const Icon(
                    Icons.bar_chart_sharp,
                    color: mainColor,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(Get.context!).size.width * 0.3,
                  child: const ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                    title: SelectableText('Charts',
                        style: TextStyle(
                            fontSize: fontSizeTitleAppBar,
                            fontFamily: 'HeeboMedium')),
                    subtitle: SelectableText('Charts',
                        style: TextStyle(
                            fontSize: fontSizeTitleAppBarSmall,
                            fontFamily: 'HeeboMedium')),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                  color: colorWhite,
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
                child: PieChart()),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    color: colorWhite,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0))),
                child: CartessianChart()),
          )
        ],
      ),
    ));
  }
}
