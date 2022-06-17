import 'package:get/get.dart';
import 'package:web_template/feature/web_app/controller/homeController.dart';
import 'package:web_template/route/route.dart';

class MenuController extends GetxController {
  // late Map<String, dynamic> data;
  HomeController controllerHome = Get.find<HomeController>();
  final List<Map<String, dynamic>> data = [
    {
      "title": "Home",
      "child": null,
      "route": AppRoutes.HOMEROUTE,
    },
    {
      "title": "Data",
      "child": [
        {
          "titleChild": "Data Driver",
          "route": AppRoutes.DATAROUTE,
          "onSelect": false,
          "subItems": [
            {
              "titleItem": "Camel Purple Mint",
            }
          ]
        }
      ]
    },
    {
      "title": "Chart",
      "child": [
        {
          "titleChild": "Pie Chart",
          "onSelect": true,
          "route": AppRoutes.CHARTROUTE,
          "subItems": []
        }
      ]
    },
    {
      "title": "Maps Monitoring",
      "child": null,
      "route": AppRoutes.MAPROUTE,
    },
  ];
  // @override
  // void onInit() {
  //   super.onInit();
  //   // data = controllerHome.data;
  // }
}
