import 'package:web_template/base/baseController.dart';
import 'package:web_template/core/network/rest_client.dart';
import 'package:web_template/feature/aruna_test/model/posts.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends BaseController {
  late RxString titleSelected = "".obs;

  @override
  void onInit() {
    super.onInit();
  }
}
