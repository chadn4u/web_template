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

  @override
  void onInit() {
    titleSelected.value = "Home";
    services = locator<NavigationService>();
    super.onInit();
  }
}
