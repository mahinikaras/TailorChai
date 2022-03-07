import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tailor_chai_mobile_app/screens/app_screen.dart';

import '../Constants/image_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      finish(context);
      AppScreen().launch(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(ImageConst.sewing_machine),
      ),
    );
  }
}
