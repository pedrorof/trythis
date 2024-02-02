// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:trythis/presentation/resources/theme_maneger.dart';
//
// import 'dart:ui' as ui;
//
// // import 'package:alice/alice.dart';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
//
//
// import '../presentation/resources/routes.dart';
//
// class MyApp extends StatefulWidget {
//   MyApp._internal();
//
//   static final MyApp instance = MyApp._internal();
//
//   factory MyApp() => instance;
//
//   @override
//   _AppState createState() => _AppState();
// }
//
// class _AppState extends State<MyApp> with WidgetsBindingObserver {
//   // final AppPreferences _appPreferences = Get.find<AppPreferences>();
//   // final PackageInfo _packageInfo = Get.find<PackageInfo>();
//   // final FirebaseMessaging _messaging = Get.find<FirebaseMessaging>();
//   // final FirebaseAnalytics _analytics = Get.find<FirebaseAnalytics>();
//
//   // final Alice _alice = Get.find<Alice>();
//
//   @override
//   void initState() {
//     WidgetsBinding.instance.addObserver(this);
//
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       await SystemChrome.setPreferredOrientations([
//         DeviceOrientation.portraitUp,
//         DeviceOrientation.portraitDown,
//       ]);
//
//       // await FirebaseNotificationsHandler.init();
//       //
//       // String? token = await this._messaging.getToken();
//       //
//       // await this._appPreferences.setFirebaseToken(token ?? "");
//       // await this._appPreferences.setLanguage();
//       //
//       // String? firebaseToken = await this._appPreferences.getFirebaseToken();
//       // print("firebaseToken: $firebaseToken");
//     });
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//
//     super.dispose();
//   }
//
//   // @override
//   // void didChangeDependencies() {
//   //   Locale locale = this._appPreferences.getLocale();
//   //
//   //   context.setLocale(locale);
//   //
//   //   super.didChangeDependencies();
//   // }
//
//   // @override
//   // void didChangePlatformBrightness() {
//   //   // ThemeMode themeMode = this._appPreferences.themeMode;
//   //   //
//   //   // if (themeMode == ThemeMode.system) {
//   //   //   this._appPreferences.setThemeMode(context, ThemeManager.DEFAULT);
//   //   // }
//   //   this._appPreferences.getThemeData(context);
//   //
//   //   super.didChangePlatformBrightness();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//        GetMaterialApp(
//         navigatorKey: Get.key,
//         // navigatorKey: this._alice.getNavigatorKey(),
//
//         debugShowCheckedModeBanner: false,
//         onGenerateRoute: RouteGenerator.getPageRoute,
//         initialRoute: Routes.SPLASH,
//
//         // navigatorObservers: <NavigatorObserver>[
//         //   FirebaseAnalyticsObserver(analytics: this._analytics),
//         // ],
//       );
//
//   }

//  Directionality(
//   textDirection: ui.TextDirection.ltr,
//   child: Banner(
//     child: child,
//     location: BannerLocation.bottomStart,
//     message: message,
//     color: FlavorConfig.instance.color,
//     textStyle: TextStyle(
//       fontWeight: FontWeightManager.bold,
//       fontSize: 12.0,
//       letterSpacing: 0.0,
//     ),
//   ),
// );

// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trythis/presentation/resources/routes.dart';
import 'package:trythis/presentation/resources/theme_maneger.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      theme: getApplicationTheme(),
      onGenerateRoute: RouteGenerator.getPageRoute,
      initialRoute: Routes.SPLASH,
    );
  }
}
