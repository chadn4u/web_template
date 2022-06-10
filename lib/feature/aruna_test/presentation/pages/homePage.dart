import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:web_template/feature/aruna_test/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/control.dart';
import '../../model/widgetCategory.dart';
import '../widgets/animateOpacityWidgets.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    bool isMobile = false;
    final bool isMaxxSize = MediaQuery.of(context).size.width >= 1000;
    bool isHoveringDownloadButton = false;
    bool isHoveringPubDevButton = false;
    late double _cardWidth = (MediaQuery.of(context).size.width * 0.9) / 3;
    WidgetCategory category;
    Map<String, dynamic> data = {
      "categoryName": "Signature Pad",
      "mobileCategoryId": 7,
      "webCategoryId": 7,
      "controlList": [
        {
          "title": "Signature Pad",
          "description":
              "Captures the signature and save it as an image to sync across devices and documents",
          "image": "assets/SignaturePad.png",
          "displayType": "tab",
          "controlId": 1,
          "subItems": [
            {
              "type": "sample",
              "title": "Getting Started",
              "key": "signature_pad_getting_started",
              "codeLink":
                  "https://github.com/syncfusion/flutter-examples/blob/master/lib/samples/signature_pad/getting_started/signature_pad_getting_started.dart",
              "needsPropertyPanel": true
            }
          ]
        }
      ]
    };
    category = WidgetCategory.fromJson(data);
    return Scaffold(
        appBar: isMobile
            ? PreferredSize(
                preferredSize: const Size.fromHeight(46.0),
                child: AppBar(
                  leading: (true) ? Container() : null,
                  elevation: 0.0,
                  backgroundColor: Colors.green,
                  title: AnimateOpacityWidget(
                      controller: controller,
                      opacity: 0,
                      child: const Text('Flutter UI Widgets',
                          style: TextStyle(
                              fontSize: 18, fontFamily: 'HeeboMedium'))),
                  actions: <Widget>[
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: IconButton(
                        icon: const Icon(Icons.settings, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ))
            : PreferredSize(
                preferredSize: const Size.fromHeight(60.0),
                child: AppBar(
                  leading: Container(),
                  elevation: 0.0,
                  backgroundColor: Colors.green,
                  flexibleSpace: Container(
                      transform: Matrix4.translationValues(0, 4, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(24, 10, 0, 0),
                            child: Text('Template',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    letterSpacing: 0.53,
                                    fontFamily: 'Roboto-Bold')),
                          ),
                          // const Padding(
                          //     padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          //     child: Text('Gado Gado Template',
                          //         style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 14,
                          //             fontFamily: 'Roboto-Regular',
                          //             letterSpacing: 0.26,
                          //             fontWeight: FontWeight.normal))),
                          // const Padding(
                          //   padding: EdgeInsets.only(top: 15),
                          // )
                        ],
                      )),
                  actions: <Widget>[
                    if (MediaQuery.of(context).size.width < 500)
                      const SizedBox(height: 0, width: 9)
                    else
                      Container(),

                    ///download option
                    if (isMobile)
                      Container()
                    else
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              top: 10, left: isMaxxSize ? 20 : 0),
                          child: Container(
                              width: 115,
                              height: 32,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                              child: StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return MouseRegion(
                                  onHover: (PointerHoverEvent event) {
                                    isHoveringDownloadButton = true;
                                    setState(() {});
                                  },
                                  onExit: (PointerExitEvent event) {
                                    isHoveringDownloadButton = false;
                                    setState(() {});
                                  },
                                  child: InkWell(
                                    hoverColor: Colors.white,
                                    onTap: () {
                                      // launchUrl(Uri.parse(
                                      //     'https://www.syncfusion.com/downloads/flutter/confirm'));
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 9, 8, 9),
                                      child: Text('DOWNLOAD NOW',
                                          style: TextStyle(
                                              color: isHoveringDownloadButton
                                                  ? Colors.green
                                                  : Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Roboto-Medium')),
                                    ),
                                  ),
                                );
                              }))),

                    ///Get package from pub.dev option
                    if (isMobile)
                      Container()
                    else
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              top: 10, left: isMaxxSize ? 25 : 12),
                          child: Container(
                              width: 118,
                              height: 32,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)),
                              child: StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return MouseRegion(
                                  onHover: (PointerHoverEvent event) {
                                    isHoveringPubDevButton = true;
                                    setState(() {});
                                  },
                                  onExit: (PointerExitEvent event) {
                                    isHoveringPubDevButton = false;
                                    setState(() {});
                                  },
                                  child: InkWell(
                                    hoverColor: Colors.white,
                                    onTap: () {
                                      // launchUrl(Uri.parse(
                                      //     'https://pub.dev/publishers/syncfusion.com/packages'));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      // const EdgeInsets.fromLTRB(0, 7, 8, 7),
                                      child: Row(children: <Widget>[
                                        // Image.asset('images/pub_logo.png',
                                        //     fit: BoxFit.contain,
                                        //     height: 33,
                                        //     width: 33),
                                        Text('Get Packages',
                                            style: TextStyle(
                                                color: isHoveringPubDevButton
                                                    ? Colors.red
                                                    : Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto-Medium'))
                                      ]),
                                    ),
                                  ),
                                );
                              }))),
                    Padding(
                        padding: EdgeInsets.only(left: isMaxxSize ? 15 : 0),
                        child: Container(
                          padding: MediaQuery.of(context).size.width < 500
                              ? const EdgeInsets.only(top: 20, left: 5)
                              : const EdgeInsets.only(top: 10, right: 15),
                          height: 60,
                          width: 60,
                          child: IconButton(
                            icon:
                                const Icon(Icons.settings, color: Colors.white),
                            onPressed: () {
                              // scaffoldKey.currentState!.openEndDrawer();
                            },
                          ),
                        )),
                  ],
                )),
        backgroundColor: Colors.grey.shade200,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.fromLTRB(24, 10, 0, 0),
                        child: Text('Menu',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                letterSpacing: 0.53,
                                fontFamily: 'Roboto-Bold'))),
                    _getCategoryWidget(
                        category, MediaQuery.of(context).size.width)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  /// get the rounded corner layout for given category
  Widget _getCategoryWidget(WidgetCategory category, double _cardWidth) {
    return Container(
        padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
                color: const Color.fromRGBO(0, 0, 0, 0.12), width: 1.1),
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        width: _cardWidth,
        child: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 15, bottom: 2),
            child: Text(
              category.categoryName!.toUpperCase(),
              style: TextStyle(
                  color: Colors.amber, fontSize: 16, fontFamily: 'Roboto-Bold'),
            ),
          ),
          Divider(
            color: const Color.fromRGBO(238, 238, 238, 1),
            thickness: 1,
          ),
          Column(children: _getControlListView(category))
        ]));
  }

  /// get the list view of the controls in the specified category.
  List<Widget> _getControlListView(WidgetCategory category) {
    final List<Widget> items = <Widget>[];
    for (int i = 0; i < category.controlList!.length; i++) {
      final Control control = Control.fromJson(category.controlList![i]);
      String? status = control.status;
      if (control.title == 'PDF Viewer') {
        status = 'New';
      }

      items.add(
        Container(
            color: Colors.blue,
            child: Material(
              color: Colors.blue,
              child: InkWell(
                splashFactory: InkRipple.splashFactory,
                hoverColor: Colors.grey.withOpacity(0.2),
                onTap: () {
                  // !model.isWebFullView
                  //     ? onTapControlInMobile(context, model, category, i)
                  //     : onTapControlInWeb(context, model, category, i);
                  // model.searchResults.clear();
                },
                child: ListTile(
                    contentPadding: EdgeInsets.fromLTRB(
                        12, 2, 0, category.controlList!.length > 3 ? 6 : 0),
                    leading: Image.asset(control.image!, fit: BoxFit.cover),
                    title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              control.title!,
                              textAlign: TextAlign.left,
                              softWrap: true,
                              textScaleFactor: 1,
                              overflow: TextOverflow.fade,
                              style: const TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 0.1,
                                  color: Colors.white,
                                  fontFamily: 'Roboto-Bold'),
                            ),
                            if (1 != 2)
                              Container()
                            else
                              (control.isBeta ?? false)
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.fromLTRB(
                                              3, 1.5, 3, 5.5),
                                          decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  245, 188, 14, 1)),
                                          child: const Text(
                                            'BETA',
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 0.12,
                                                fontFamily: 'Roboto-Medium',
                                                color: Colors.black),
                                          )))
                                  : Container()
                          ]),
                          if (status != null)
                            Container(
                                decoration: BoxDecoration(
                                    color: status.toLowerCase() == 'new'
                                        ? const Color.fromRGBO(55, 153, 30, 1)
                                        : status.toLowerCase() == 'updated'
                                            ? const Color.fromRGBO(
                                                246, 117, 0, 1)
                                            : Colors.transparent,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10))),
                                padding:
                                    const EdgeInsets.fromLTRB(6, 1.5, 4, 5.5),
                                child: Text(status,
                                    style: const TextStyle(
                                        fontFamily: 'Roboto-Medium',
                                        color: Colors.white,
                                        fontSize: 10.5)))
                          else
                            Container()
                        ]),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 7.0, 12.0, 0.0),
                      child: Text(
                        control.description!,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        textScaleFactor: 1,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Color.fromRGBO(128, 128, 128, 1),
                        ),
                      ),
                    )),
              ),
            )),
      );
    }
    return items;
  }
}
