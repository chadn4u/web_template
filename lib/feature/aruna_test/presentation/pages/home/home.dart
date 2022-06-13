import 'package:web_template/feature/aruna_test/model/posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Posts data = Get.arguments['data'];
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Home"),
        // ),
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("ini Home"),
        ),
      ],
    ));
  }
}
