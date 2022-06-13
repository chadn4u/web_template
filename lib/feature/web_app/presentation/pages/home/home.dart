import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/feature/web_app/controller/homeController.dart';
import 'package:web_template/utils/const.dart';

class Home extends GetResponsiveView<HomeController> {
  @override
  Widget phone() {
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
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    color: colorWhite),
                child: const Icon(
                  Icons.home,
                  color: colorBlack,
                  size: 45,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(Get.context!).size.width * 0.3,
                child: const ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                  title: Text('Dashboard',
                      style: TextStyle(
                          fontSize: fontSizeTitleAppBar,
                          fontFamily: 'HeeboMedium')),
                  subtitle: Text('Home',
                      style: TextStyle(
                          fontSize: fontSizeTitleAppBarSmall,
                          fontFamily: 'HeeboMedium')),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(Get.context!).size.width,
                height: 90,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFDAE2F8), Color(0xFFD6A4A4)]),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      child: ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: 4),
                        title: AutoSizeText('Total Orders',
                            style: TextStyle(
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSizeTitleAppBar,
                                fontFamily: 'HeeboMedium')),
                        subtitle: AutoSizeText('Home',
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: fontSizeTitleAppBarSmall,
                                fontFamily: 'HeeboMedium')),
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText('1980',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'HeeboMedium')),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(Get.context!).size.width,
                height: 90,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF1D976C), Color(0xFF93F9B9)]),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      child: ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: 4),
                        title: AutoSizeText('Clients',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSizeTitleAppBar,
                                fontFamily: 'HeeboMedium')),
                        subtitle: AutoSizeText('Total client profit',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: fontSizeTitleAppBarSmall,
                                fontFamily: 'HeeboMedium')),
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText('\$1,280',
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'HeeboMedium')),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(Get.context!).size.width,
                height: 90,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF02AAB0), Color(0xFF00cdac)]),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      child: ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: 4),
                        title: AutoSizeText('Followers',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSizeTitleAppBar,
                                fontFamily: 'HeeboMedium')),
                        subtitle: AutoSizeText('People Interested',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: fontSizeTitleAppBarSmall,
                                fontFamily: 'HeeboMedium')),
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText('73%',
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'HeeboMedium')),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }

  @override
  Widget desktop() {
    // final Posts data = Get.arguments['data'];
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
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                    color: colorWhite),
                child: const Icon(
                  Icons.home,
                  color: colorBlack,
                  size: 45,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(Get.context!).size.width * 0.3,
                child: const ListTile(
                  visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                  title: Text('Dashboard',
                      style: TextStyle(
                          fontSize: fontSizeTitleAppBar,
                          fontFamily: 'HeeboMedium')),
                  subtitle: Text('Home',
                      style: TextStyle(
                          fontSize: fontSizeTitleAppBarSmall,
                          fontFamily: 'HeeboMedium')),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(Get.context!).size.width * 0.25,
                height: 90,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFDAE2F8), Color(0xFFD6A4A4)]),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      child: ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: 4),
                        title: AutoSizeText('Total Orders',
                            style: TextStyle(
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSizeTitleAppBar,
                                fontFamily: 'HeeboMedium')),
                        subtitle: AutoSizeText('Home',
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: fontSizeTitleAppBarSmall,
                                fontFamily: 'HeeboMedium')),
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText('1980',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'HeeboMedium')),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(Get.context!).size.width * 0.25,
                height: 90,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF1D976C), Color(0xFF93F9B9)]),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      child: ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: 4),
                        title: AutoSizeText('Clients',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSizeTitleAppBar,
                                fontFamily: 'HeeboMedium')),
                        subtitle: AutoSizeText('Total client profit',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: fontSizeTitleAppBarSmall,
                                fontFamily: 'HeeboMedium')),
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText('\$1,280',
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'HeeboMedium')),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(Get.context!).size.width * 0.25,
                height: 90,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF02AAB0), Color(0xFF00cdac)]),
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Expanded(
                      child: ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: 4),
                        title: AutoSizeText('Followers',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSizeTitleAppBar,
                                fontFamily: 'HeeboMedium')),
                        subtitle: AutoSizeText('People Interested',
                            maxLines: 1,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: fontSizeTitleAppBarSmall,
                                fontFamily: 'HeeboMedium')),
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText('73%',
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: colorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontFamily: 'HeeboMedium')),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
