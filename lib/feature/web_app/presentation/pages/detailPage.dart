import 'package:web_template/feature/web_app/model/posts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Posts data = Get.arguments['data'];
    return Scaffold(
        appBar: AppBar(
          title: const SelectableText("Detail data"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(data.title),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(data.body),
            ),
          ],
        ));
  }
}
