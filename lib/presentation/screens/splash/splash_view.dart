import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:trythis/presentation/resources/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {

    WidgetsBinding.instance.addPersistentFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 1));

      await Get.offNamed(Routes.HOME);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
       Image.asset("assets/images/1.5x/test.jpg");

  }
}
