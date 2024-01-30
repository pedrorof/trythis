import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    );
  }
}
