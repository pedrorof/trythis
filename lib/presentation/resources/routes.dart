import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trythis/presentation/resources/strings_manager.dart';
import 'package:trythis/presentation/screens/home/home_view.dart';

import '../screens/splash/splash_view.dart';

class Routes {
  static const SPLASH = '/';
  static const HOME = '/home';
}

class RouteGenerator {
  static Route<dynamic> getPageRoute(RouteSettings routeSettings) {
    var args = routeSettings.arguments as Map?;

    switch (routeSettings.name) {
      case Routes.SPLASH:
        return GetPageRoute(
          settings: routeSettings,
          page: () => SplashView(),
        );

        case Routes.HOME:
        return GetPageRoute(
          settings: routeSettings,
          page: () => HomeView(),
        );

      default:
        return undefinedPageRoute();
    }
  }

  static Route<dynamic> undefinedPageRoute() {
    return GetPageRoute(
      page: () => Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(StringsManager.noRouteFound),
          ),
        ),
        body: const Center(
          child: Text(StringsManager.noRouteFound),
        ),
      ),
    );
  }
}
