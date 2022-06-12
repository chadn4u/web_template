import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:web_template/feature/aruna_test/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    List<Map<String, dynamic>> data = [
      {
        "title": "Signature Pad",
        "child": [
          {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
        ]
      },
      {
        "title": "Camel",
        "child": [
          {
            "titleChild": "Camel Mint",
            "onSelect": false,
            "subItems": [
              {
                "titleItem": "Camel Purple Mint",
              }
            ]
          }
        ]
      },
      {"title": "Camel Yellow", "child": null},
      {"title": "Camel White", "child": null},
      {
        "title": "Marlboro",
        "child": [
          {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
          {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
          {
            "titleChild": "Marlboro Ice Blast",
            "onSelect": false,
            "subItems": null
          },
        ]
      },
      {
        "title": "Signature Pad",
        "child": [
          {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
        ]
      },
      {
        "title": "Camel",
        "child": [
          {
            "titleChild": "Camel Mint",
            "onSelect": false,
            "subItems": [
              {
                "titleItem": "Camel Purple Mint",
              }
            ]
          }
        ]
      },
      {"title": "Camel Yellow", "child": null},
      {"title": "Camel White", "child": null},
      {
        "title": "Marlboro",
        "child": [
          {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
          {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
          {
            "titleChild": "Marlboro Ice Blast",
            "onSelect": false,
            "subItems": null
          },
        ]
      },
      {
        "title": "Signature Pad",
        "child": [
          {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
        ]
      },
      {
        "title": "Camel",
        "child": [
          {
            "titleChild": "Camel Mint",
            "onSelect": false,
            "subItems": [
              {
                "titleItem": "Camel Purple Mint",
              }
            ]
          }
        ]
      },
      {"title": "Camel Yellow", "child": null},
      {"title": "Camel White", "child": null},
      {
        "title": "Marlboro",
        "child": [
          {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
          {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
          {
            "titleChild": "Marlboro Ice Blast",
            "onSelect": false,
            "subItems": null
          },
        ]
      },
      {
        "title": "Signature Pad",
        "child": [
          {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
        ]
      },
      {
        "title": "Camel",
        "child": [
          {
            "titleChild": "Camel Mint",
            "onSelect": false,
            "subItems": [
              {
                "titleItem": "Camel Purple Mint",
              }
            ]
          }
        ]
      },
      {"title": "Camel Yellow", "child": null},
      {"title": "Camel White", "child": null},
      {
        "title": "Marlboro",
        "child": [
          {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
          {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
          {
            "titleChild": "Marlboro Ice Blast",
            "onSelect": false,
            "subItems": null
          },
        ]
      },
      {
        "title": "Signature Pad",
        "child": [
          {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
        ]
      },
      {
        "title": "Camel",
        "child": [
          {
            "titleChild": "Camel Mint",
            "onSelect": false,
            "subItems": [
              {
                "titleItem": "Camel Purple Mint",
              }
            ]
          }
        ]
      },
      {"title": "Camel Yellow", "child": null},
      {"title": "Camel White", "child": null},
      {
        "title": "Marlboro",
        "child": [
          {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
          {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
          {
            "titleChild": "Marlboro Ice Blast",
            "onSelect": false,
            "subItems": null
          },
        ]
      },
      {
        "title": "Signature Pad",
        "child": [
          {"titleChild": "Signature Pad", "onSelect": true, "subItems": []}
        ]
      },
      {
        "title": "Camel",
        "child": [
          {
            "titleChild": "Camel Mint",
            "onSelect": false,
            "subItems": [
              {
                "titleItem": "Camel Purple Mint",
              }
            ]
          }
        ]
      },
      {"title": "Camel Yellow", "child": null},
      {"title": "Camel White", "child": null},
      {
        "title": "Marlboro",
        "child": [
          {"titleChild": "Marlboro White", "onSelect": false, "subItems": []},
          {"titleChild": "Marlboro Red", "onSelect": false, "subItems": []},
          {
            "titleChild": "Marlboro Ice Blast",
            "onSelect": false,
            "subItems": null
          },
        ]
      },
    ];
    // category = WidgetCategory.fromJson(data);
    print(MediaQuery.of(context).size.width);
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
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                color: Colors.grey.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.fromLTRB(24, 10, 0, 10),
                        child: Text('Menu',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                letterSpacing: 0.53,
                                fontFamily: 'Roboto-Bold'))),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) =>
                            _getCategoryWidget(data[index], context),
                        itemCount: data.length,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  /// get the rounded corner layout for given category
  Widget _getCategoryWidget(Map<String, dynamic> data, BuildContext ctx) {
    List<Map<String, dynamic>> dataChild = [];

    if (data["child"] != null) {
      dataChild.addAll(data["child"]);
    }

    return data["child"] != null
        ? Theme(
            data: Theme.of(ctx).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
                initiallyExpanded: true,
                title: Text(data["title"],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 0.53,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto-Bold')),
                children: List<Widget>.generate(
                    dataChild.length,
                    (index) => Material(
                          color: Colors.grey.shade200,
                          child: InkWell(
                            hoverColor: Colors.grey.withOpacity(0.2),
                            onTap: () {
                              controller.titleSelected.value =
                                  dataChild[index]["titleChild"];
                            },
                            child: Container(
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Obx(
                                      () => Container(
                                          width: 5,
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.fromLTRB(
                                              1, 10, 10, 10),
                                          color: controller.titleSelected ==
                                                  dataChild[index]["titleChild"]
                                              ? Colors.blue
                                              : Colors.transparent,
                                          child: const Opacity(
                                              opacity: 0.0, child: Text('1'))),
                                    ),
                                    Expanded(
                                        child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 10, 10),
                                      child: Text(
                                          dataChild[index]["titleChild"],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              letterSpacing: 0.53,
                                              fontFamily: 'Roboto-Bold')),
                                    ))
                                  ],
                                )),
                          ),
                        ))),
          )
        : Material(
            color: Colors.grey.shade200,
            child: InkWell(
              hoverColor: Colors.grey.withOpacity(0.2),
              onTap: () {
                controller.titleSelected.value = data["title"];
              },
              child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Obx(
                        () => Container(
                            width: 5,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.fromLTRB(1, 10, 10, 10),
                            color: controller.titleSelected == data["title"]
                                ? Colors.blue
                                : Colors.transparent,
                            child:
                                const Opacity(opacity: 0.0, child: Text('1'))),
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(data["title"],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 0.53,
                                fontFamily: 'Roboto-Bold',
                                fontWeight: FontWeight.bold)),
                      ))
                    ],
                  )),
            ),
          );
  }
}
