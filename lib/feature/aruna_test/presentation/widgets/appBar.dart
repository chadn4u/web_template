import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/feature/aruna_test/controller/appBarController.dart';
import 'package:web_template/utils/const.dart';

class AppBarHelper extends GetResponsiveView<AppBarController> {
  AppBarHelper({Key? key}) : super(key: key);
  // final bool isMaxxSize = MediaQuery.of(context).size.width >= 1000;

  @override
  Widget phone() {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            if (!controller.isDrawerOpen) {
              controller.controllerHome.scaffoldKey.currentState!.openDrawer();
            } else {
              controller.controllerHome.scaffoldKey.currentState!.closeDrawer();
            }
          },
          icon: Icon(Icons.menu)),
      elevation: 0.0,
      backgroundColor: Colors.green,
      title: const Text('Flutter UI Widgets',
          style: TextStyle(
              fontSize: fontSizeTitleAppBar, fontFamily: 'HeeboMedium')),
      actions: <Widget>[
        SizedBox(
          height: 40,
          width: 40,
          child: IconButton(
            icon: const Icon(Icons.settings, color: colorWhite),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Widget desktop() {
    return AppBar(
      leading: Container(),
      elevation: 0.0,
      backgroundColor: backgroundColorAppBar,
      flexibleSpace: Container(
          transform: Matrix4.translationValues(0, 4, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 15, 0, 0),
                child: Text('Template',
                    style: TextStyle(
                        color: colorWhite,
                        fontSize: fontSizeTitleAppBar,
                        letterSpacing: 0.53,
                        fontFamily: 'Roboto-Bold')),
              ),
            ],
          )),
      actions: <Widget>[
        if (MediaQuery.of(Get.context!).size.width < 500)
          const SizedBox(height: 0, width: 9)
        else
          Container(),

        // Container(
        //     alignment: Alignment.center,
        //     padding:
        //         EdgeInsets.only(top: 10, left: controller.isMaxxSize ? 20 : 0),
        //     child: Container(
        //         width: 115,
        //         height: 32,
        //         decoration:
        //             BoxDecoration(border: Border.all(color: Colors.white)),
        //         child: StatefulBuilder(
        //             builder: (BuildContext context, StateSetter setState) {
        //           return MouseRegion(
        //             onHover: (PointerHoverEvent event) {
        //               controller.isHoveringDownloadButton = true;
        //               setState(() {});
        //             },
        //             onExit: (PointerExitEvent event) {
        //               controller.isHoveringDownloadButton = false;
        //               setState(() {});
        //             },
        //             child: InkWell(
        //               hoverColor: colorHover,
        //               onTap: () {
        //                 // launchUrl(Uri.parse(
        //                 //     'https://www.syncfusion.com/downloads/flutter/confirm'));
        //               },
        //               child: Padding(
        //                 padding: const EdgeInsets.fromLTRB(8, 9, 8, 9),
        //                 child: Text('DOWNLOAD NOW',
        //                     style: TextStyle(
        //                         color: controller.isHoveringDownloadButton
        //                             ? colorHoveringButton
        //                             : colorHover,
        //                         fontSize: 12,
        //                         fontFamily: 'Roboto-Medium')),
        //               ),
        //             ),
        //           );
        //         }))),

        ///Get package from pub.dev option
        // Container(
        //     alignment: Alignment.center,
        //     padding:
        //         EdgeInsets.only(top: 10, left: controller.isMaxxSize ? 25 : 12),
        //     child: Container(
        //         width: 118,
        //         height: 32,
        //         decoration:
        //             BoxDecoration(border: Border.all(color: Colors.white)),
        //         child: StatefulBuilder(
        //             builder: (BuildContext context, StateSetter setState) {
        //           return MouseRegion(
        //             onHover: (PointerHoverEvent event) {
        //               controller.isHoveringPubDevButton = true;
        //               setState(() {});
        //             },
        //             onExit: (PointerExitEvent event) {
        //               controller.isHoveringPubDevButton = false;
        //               setState(() {});
        //             },
        //             child: InkWell(
        //               hoverColor: Colors.white,
        //               onTap: () {
        //                 // launchUrl(Uri.parse(
        //                 //     'https://pub.dev/publishers/syncfusion.com/packages'));
        //               },
        //               child: Padding(
        //                 padding: const EdgeInsets.all(8),
        //                 // const EdgeInsets.fromLTRB(0, 7, 8, 7),
        //                 child: Row(children: <Widget>[
        //                   // Image.asset('images/pub_logo.png',
        //                   //     fit: BoxFit.contain,
        //                   //     height: 33,
        //                   //     width: 33),
        //                   Text('Get Packages',
        //                       style: TextStyle(
        //                           color: controller.isHoveringPubDevButton
        //                               ? Colors.red
        //                               : Colors.white,
        //                           fontSize: 12,
        //                           fontFamily: 'Roboto-Medium'))
        //                 ]),
        //               ),
        //             ),
        //           );
        //         }))),
        Padding(
            padding: EdgeInsets.only(left: controller.isMaxxSize ? 15 : 0),
            child: Container(
              padding: MediaQuery.of(Get.context!).size.width < 500
                  ? const EdgeInsets.only(top: 20, left: 5)
                  : const EdgeInsets.only(top: 10, right: 15),
              height: 60,
              width: 60,
              child: IconButton(
                icon: const Icon(Icons.settings, color: colorWhite),
                onPressed: () {
                  // scaffoldKey.currentState!.openEndDrawer();
                },
              ),
            )),
      ],
    );
  }
}
