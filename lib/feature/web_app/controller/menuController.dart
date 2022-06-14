import 'package:get/get.dart';
import 'package:web_template/feature/web_app/controller/homeController.dart';

class MenuController extends GetxController {
  // late Map<String, dynamic> data;
  HomeController controllerHome = Get.find<HomeController>();
  final List<Map<String, dynamic>> data = [
    {"title": "Home", "child": null},
    {
      "title": "Chart",
      "child": [
        {"titleChild": "Pie Chart", "onSelect": true, "subItems": []}
      ]
    },
    {
      "title": "Camel",
      "child": [
        {
          "titleChild": "Camel Mint",
          "onSelect": false,
          "subItems": [
            {
              "titleItem": "Camel Purple Mint",
            }
          ]
        }
      ]
    },
    {"title": "Camel Yellow", "child": null},
    {"title": "Camel White", "child": null},
    {
      "title": "Marlboro",
      "child": [
        {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
        {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
        {
          "titleChild": "Marlboro Ice Blast",
          "onSelect": false,
          "subItems": null
        },
      ]
    },
    {
      "title": "Signature Pad",
      "child": [
        {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
      ]
    },
    {
      "title": "Camel",
      "child": [
        {
          "titleChild": "Camel Mint",
          "onSelect": false,
          "subItems": [
            {
              "titleItem": "Camel Purple Mint",
            }
          ]
        }
      ]
    },
    {"title": "Camel Yellow", "child": null},
    {"title": "Camel White", "child": null},
    {
      "title": "Marlboro",
      "child": [
        {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
        {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
        {
          "titleChild": "Marlboro Ice Blast",
          "onSelect": false,
          "subItems": null
        },
      ]
    },
    {
      "title": "Signature Pad",
      "child": [
        {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
      ]
    },
    {
      "title": "Camel",
      "child": [
        {
          "titleChild": "Camel Mint",
          "onSelect": false,
          "subItems": [
            {
              "titleItem": "Camel Purple Mint",
            }
          ]
        }
      ]
    },
    {"title": "Camel Yellow", "child": null},
    {"title": "Camel White", "child": null},
    {
      "title": "Marlboro",
      "child": [
        {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
        {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
        {
          "titleChild": "Marlboro Ice Blast",
          "onSelect": false,
          "subItems": null
        },
      ]
    },
    {
      "title": "Signature Pad",
      "child": [
        {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
      ]
    },
    {
      "title": "Camel",
      "child": [
        {
          "titleChild": "Camel Mint",
          "onSelect": false,
          "subItems": [
            {
              "titleItem": "Camel Purple Mint",
            }
          ]
        }
      ]
    },
    {"title": "Camel Yellow", "child": null},
    {"title": "Camel White", "child": null},
    {
      "title": "Marlboro",
      "child": [
        {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
        {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
        {
          "titleChild": "Marlboro Ice Blast",
          "onSelect": false,
          "subItems": null
        },
      ]
    },
    {
      "title": "Signature Pad",
      "child": [
        {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
      ]
    },
    {
      "title": "Camel",
      "child": [
        {
          "titleChild": "Camel Mint",
          "onSelect": false,
          "subItems": [
            {
              "titleItem": "Camel Purple Mint",
            }
          ]
        }
      ]
    },
    {"title": "Camel Yellow", "child": null},
    {"title": "Camel White", "child": null},
    {
      "title": "Marlboro",
      "child": [
        {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
        {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
        {
          "titleChild": "Marlboro Ice Blast",
          "onSelect": false,
          "subItems": null
        },
      ]
    },
    {
      "title": "Signature Pad",
      "child": [
        {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
      ]
    },
    {
      "title": "Camel",
      "child": [
        {
          "titleChild": "Camel Mint",
          "onSelect": false,
          "subItems": [
            {
              "titleItem": "Camel Purple Mint",
            }
          ]
        }
      ]
    },
    {"title": "Camel Yellow", "child": null},
    {"title": "Camel White", "child": null},
    {
      "title": "Marlboro",
      "child": [
        {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
        {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
        {
          "titleChild": "Marlboro Ice Blast",
          "onSelect": false,
          "subItems": null
        },
      ]
    },
  ];
  @override
  void onInit() {
    super.onInit();
    // data = controllerHome.data;
  }
}
