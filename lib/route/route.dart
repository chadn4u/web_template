// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:web_template/feature/web_app/presentation/pages/charts/charts.dart';
import 'package:web_template/feature/web_app/presentation/pages/data_grid/dataGrid.dart';
import 'package:web_template/feature/web_app/presentation/pages/detail/detail.dart';
import 'package:web_template/feature/web_app/presentation/pages/detailPage.dart';
import 'package:web_template/feature/web_app/presentation/pages/home/home.dart';
import 'package:web_template/feature/web_app/presentation/pages/homePage.dart';
import 'package:get/get.dart';
import 'package:web_template/feature/web_app/presentation/pages/map/mapPage.dart';

class AppRoutes {
  static const String HOMEPAGE = '/homePage';
  static const String DETAILPAGE = '/detailPage';

  static const String HOMEROUTE = '/';
  static const String DETAILROUTE = '/detailRoute';
  static const String CHARTROUTE = '/charts';
  static const String MAPROUTE = '/map';
  static const String DATAROUTE = '/data';
}

class RoutingClass {
  // ignore: non_constant_identifier_names
  static List<GetPage<dynamic>> LISTPAGE = [
    GetPage(name: AppRoutes.HOMEPAGE, page: () => HomePage()),
    GetPage(name: AppRoutes.DETAILPAGE, page: () => DetailPage()),
  ];
}

Route<dynamic> generateRoute(RouteSettings settings) {
  // print(settings.arguments);
  switch (settings.name) {
    case AppRoutes.HOMEROUTE:
      return _getPageRoute(Home(), settings);
    case AppRoutes.DETAILROUTE:
      return _getPageRoute(
          Details(data: settings.arguments as Map<String, dynamic>), settings);
    case AppRoutes.CHARTROUTE:
      return _getPageRoute(Charts(), settings);
    case AppRoutes.MAPROUTE:
      return _getPageRoute(MapPage(), settings);
    case AppRoutes.DATAROUTE:
      return _getPageRoute(DataGrids(), settings);
    default:
      return _getPageRoute(Home(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name!);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
