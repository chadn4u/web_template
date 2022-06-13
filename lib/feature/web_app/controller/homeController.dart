import 'package:flutter/material.dart';
import 'package:web_template/base/baseController.dart';
// import 'package:web_template/core/network/rest_client.dart';
// import 'package:web_template/feature/web_app/model/posts.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:web_template/core/service/navigationService.dart';
import 'package:web_template/feature/web_app/presentation/locator.dart';

class HomeController extends BaseController {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  late RxString titleSelected = "".obs;
  late Map<String, dynamic> dataForPhone;
  late NavigationService services;
  final List<Map<String, dynamic>> data = [
    {"title": "Home", "child": null},
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
    titleSelected.value = "Home";
    services = locator<NavigationService>();
    super.onInit();
  }
}
