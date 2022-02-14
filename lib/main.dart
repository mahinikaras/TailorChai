import 'package:flutter/material.dart';
import 'package:tailor_chai_mobile_app/app_screen.dart';
import 'package:tailor_chai_mobile_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tailor Chai',
        color: Colors.blue,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => SplashScreen(),
          '/appScreen': (context) => AppScreen(),
        });
  }
}
