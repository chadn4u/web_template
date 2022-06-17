import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:web_template/feature/web_app/presentation/widgets/map/map.dart';
import 'package:web_template/utils/const.dart';

class MapPage extends GetResponsiveView {
  MapPage({Key? key}) : super(key: key);

  @override
  Widget desktop() {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: MediaQuery.of(Get.context!).size.width,
          padding: const EdgeInsets.all(20.0),
          height: 150,
          decoration: BoxDecoration(color: Colors.grey.shade100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    // border: Border.all(width: 1.0),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    color: colorWhite),
                child: const Icon(
                  Icons.map,
                  color: mainColor,
                  size: 45,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(Get.context!).size.width * 0.3,
                child: const ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                  title: SelectableText('Maps',
                      style: TextStyle(
                          fontSize: fontSizeTitleAppBar,
                          fontFamily: 'HeeboMedium')),
                  subtitle: SelectableText('Driver Location',
                      style: TextStyle(
                          fontSize: fontSizeTitleAppBarSmall,
                          fontFamily: 'HeeboMedium')),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Maps(),
          ),
        )
      ],
    ));
  }
}
