import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_template/feature/web_app/controller/homeController.dart';
import 'package:web_template/feature/web_app/presentation/widgets/cards/cards.dart';
import 'package:web_template/feature/web_app/presentation/widgets/cards/gradientCards.dart';
import 'package:web_template/utils/const.dart';

class Home extends GetResponsiveView<HomeController> {
  Home({Key? key}) : super(key: key);

  @override
  Widget phone() {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
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
                    Icons.home,
                    color: colorBlack,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(Get.context!).size.width * 0.3,
                  child: const ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                    title: AutoSizeText('Dashboard',
                        style: TextStyle(
                            fontSize: fontSizeTitleAppBar,
                            fontFamily: 'HeeboMedium')),
                    subtitle: AutoSizeText('Home',
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
                GradientCards(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFDAE2F8), Color(0xFFD6A4A4)]),
                    title: 'Orders',
                    value: '1980',
                    description: 'Total Orders'),
                const SizedBox(
                  height: 10,
                ),
                GradientCards(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF1D976C), Color(0xFF93F9B9)]),
                    title: 'Clients',
                    value: '\$1,280',
                    description: 'Total client profit'),
                const SizedBox(
                  height: 10,
                ),
                GradientCards(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF02AAB0), Color(0xFF00cdac)]),
                    title: 'Followers',
                    value: "73%",
                    description: 'People Interested'),
                const SizedBox(
                  height: 10,
                ),
                Cards(
                  bgColorCard: Colors.blue.shade300,
                  icon: Icons.people,
                  value: '1034',
                  title: "Total Driver",
                  percentage: "147 %",
                  isDown: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                Cards(
                  bgColorCard: Colors.yellow.shade300,
                  icon: Icons.ad_units,
                  value: '11',
                  title: "Total Ads",
                  percentage: "3,2 %",
                  isDown: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                Cards(
                  bgColorCard: Colors.green.shade300,
                  icon: Icons.wifi,
                  value: '83',
                  title: "Driver Online",
                  percentage: "77,2 %",
                  isDown: true,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget desktop() {
    // final Posts data = Get.arguments['data'];
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
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
                    Icons.home,
                    color: mainColor,
                    size: 45,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(Get.context!).size.width * 0.3,
                  child: const ListTile(
                    visualDensity: VisualDensity(horizontal: 0, vertical: 4),
                    title: SelectableText('Dashboard',
                        style: TextStyle(
                            fontSize: fontSizeTitleAppBar,
                            fontFamily: 'HeeboMedium')),
                    subtitle: SelectableText('Home',
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
                GradientCards(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFDAE2F8), Color(0xFFD6A4A4)]),
                    title: 'Orders',
                    value: '1980',
                    description: 'Total Orders'),
                GradientCards(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF1D976C), Color(0xFF93F9B9)]),
                    title: 'Clients',
                    value: '\$1,280',
                    description: 'Total client profit'),
                GradientCards(
                    gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF02AAB0), Color(0xFF00cdac)]),
                    title: 'Followers',
                    value: "73%",
                    description: 'People Interested'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Cards(
                  bgColorCard: Colors.blue.shade300,
                  icon: Icons.people,
                  value: '1034',
                  title: "Total Driver",
                  percentage: "147 %",
                  isDown: false,
                ),
                Cards(
                  bgColorCard: Colors.yellow.shade300,
                  icon: Icons.ad_units,
                  value: '11',
                  title: "Total Ads",
                  percentage: "3,2 %",
                  isDown: false,
                ),
                Cards(
                  bgColorCard: Colors.green.shade300,
                  icon: Icons.wifi,
                  value: '83',
                  title: "Driver Online",
                  percentage: "77,2 %",
                  isDown: true,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
