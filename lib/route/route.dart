import 'package:flutter/material.dart';
import 'package:web_template/feature/web_app/presentation/pages/detail/detail.dart';
import 'package:web_template/feature/web_app/presentation/pages/detailPage.dart';
import 'package:web_template/feature/web_app/presentation/pages/home/home.dart';
import 'package:web_template/feature/web_app/presentation/pages/homePage.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String HOMEPAGE = '/homePage';
  static const String DETAILPAGE = '/detailPage';

  static const String HOMEROUTE = '/';
  static const String DETAILROUTE = '/detailRoute';
}

class RoutingClass {
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
    // case EpisodesRoute:
    //   return _getPageRoute(EpisodesView(), settings);
    // case EpisodeDetailsRoute:
    //   return _getPageRoute(EpisodeDetails(), settings);
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
