import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Map<String, dynamic> data;
  const Details({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Posts data = Get.arguments['data'];
    // final args = ModalRoute.of(context)!.settings.arguments;
    // print(args);
    // late Map<String, dynamic> dataa = data;
    return Scaffold(
        // appBar: AppBar(
        //   title: SelectableText("Detail data"),
        // ),
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SelectableText(data["data"]),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SelectableText("uyee"),
        ),
      ],
    ));
  }
}
