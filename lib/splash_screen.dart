import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tailor_chai_mobile_app/Constants/color_cons.dart';
import 'package:tailor_chai_mobile_app/Constants/string_const.dart';
import 'package:tailor_chai_mobile_app/app_screen.dart';
import 'package:tailor_chai_mobile_app/utils/size.dart';

import 'Constants/image_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil("/appScreen", (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.appTheme,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            ImageConst.sewing_machine,
            height: getPercentH(20, context),
          ),
          const Text(
            StringConst.appName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: StringConst.fontFamilyDarling, fontSize: 30),
          )
        ],
      ),
    );
  }
}
