import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/utils/const.dart';

class GradientCards extends GetResponsiveView {
  final Gradient gradient;
  final String title;
  final String value;
  final String description;
  GradientCards(
      {Key? key,
      required this.gradient,
      required this.title,
      required this.value,
      required this.description})
      : super(key: key);

  @override
  Widget phone() {
    return Container(
      width: MediaQuery.of(Get.context!).size.width,
      height: 90,
      decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: 4),
              title: AutoSizeText(title,
                  maxLines: 1,
                  style: const TextStyle(
                      color: colorWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitleAppBar,
                      fontFamily: 'HeeboMedium')),
              subtitle: AutoSizeText(description,
                  maxLines: 1,
                  style: const TextStyle(
                      color: colorWhite,
                      fontSize: fontSizeTitleAppBarSmall,
                      fontFamily: 'HeeboMedium')),
            ),
          ),
          Expanded(
            child: AutoSizeText(value,
                maxLines: 1,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: colorWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'HeeboMedium')),
          )
        ],
      ),
    );
  }

  @override
  Widget desktop() {
    return Container(
      width: MediaQuery.of(Get.context!).size.width * 0.25,
      height: 90,
      decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ListTile(
              visualDensity: const VisualDensity(horizontal: 0, vertical: 4),
              title: AutoSizeText(title,
                  maxLines: 1,
                  style: const TextStyle(
                      color: colorWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeTitleAppBar,
                      fontFamily: 'HeeboMedium')),
              subtitle: AutoSizeText(description,
                  maxLines: 1,
                  style: const TextStyle(
                      color: colorWhite,
                      fontSize: fontSizeTitleAppBarSmall,
                      fontFamily: 'HeeboMedium')),
            ),
          ),
          Expanded(
            child: AutoSizeText(value,
                maxLines: 1,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    color: colorWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'HeeboMedium')),
          )
        ],
      ),
    );
  }
}
