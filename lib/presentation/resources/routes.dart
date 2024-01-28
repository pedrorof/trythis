import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/splash/splash_screen.dart';

class Routes{
  static const INITIAL = '/';
  static const HOME = '/home';
}

class RouteGenerator{
  static Route<dynamic> getPageRoute(RouteSettings routeSettings){
    var args = routeSettings.arguments as Map?;

    switch(routeSettings.name){
      case Routes.INITIAL:
        return GetPageRoute(
          settings: routeSettings,
          page: () => SplashView(),
        );

      default:
        return undefinedPageRoute();
    }
  }
  static Route<dynamic> undefinedPageRoute() {
    return GetPageRoute(
      page: () => Scaffold(
        appBar: AppBar(
          title: Text("Pagina nao encontrada"),
        ),
        body: Center(child: Text("Pagina nao encontrada")),
      ),
    );
  }
}