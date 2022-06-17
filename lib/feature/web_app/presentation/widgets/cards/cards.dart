import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/utils/const.dart';

class Cards extends GetResponsiveView {
  final Color bgColorCard;
  final IconData icon;
  final String value;
  final String title;
  final String percentage;
  final bool isDown;
  Cards(
      {Key? key,
      required this.bgColorCard,
      required this.icon,
      required this.value,
      required this.title,
      required this.percentage,
      required this.isDown})
      : super(key: key);

  @override
  Widget phone() {
    return Container(
      width: MediaQuery.of(Get.context!).size.width,
      height: 220,
      decoration: BoxDecoration(
          color: bgColorCard, //
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade50),
            child: Icon(
              icon, //Icons.people,
              size: 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText(value,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: colorWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'HeeboMedium')),
          const SizedBox(
            height: 8,
          ),
          AutoSizeText(title,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.grey.shade100,
                  fontSize: 20,
                  fontFamily: 'HeeboMedium')),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText('-> $percentage',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: isDown ? Colors.red : Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  fontFamily: 'HeeboMedium')),
        ],
      ),
    );
  }

  @override
  Widget desktop() {
    return Container(
      width: MediaQuery.of(Get.context!).size.width * 0.25,
      height: 220,
      decoration: BoxDecoration(
          color: bgColorCard, //
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade50),
            child: Icon(
              icon, //Icons.people,
              size: 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText(value,
              textAlign: TextAlign.right,
              style: const TextStyle(
                  color: colorWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'HeeboMedium')),
          const SizedBox(
            height: 8,
          ),
          AutoSizeText(title,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: Colors.grey.shade100,
                  fontSize: 20,
                  fontFamily: 'HeeboMedium')),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText('-> $percentage',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: isDown ? Colors.red : Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  fontFamily: 'HeeboMedium')),
        ],
      ),
    );
  }
}
