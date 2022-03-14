import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:tailor_chai_mobile_app/Constants/color_cons.dart';
import 'package:tailor_chai_mobile_app/Constants/image_const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConst.home1),
                  colorFilter: ColorFilter.mode(
                      ColorConst.home1OverlayColor.withOpacity(0.8),
                      BlendMode.darken),
                  fit: BoxFit.fill,
                ),
              ),
              child: new BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 0.0),
                child: Container(
                  decoration:
                      new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConst.appLogo),
                    // colorFilter: ColorFilter.mode(
                    //     ColorConst.home1OverlayColor.withOpacity(0.8),
                    //     BlendMode.darken),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ).paddingTop(40),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Text(
                  "We make cloths that suits you.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ).paddingTop(130)
          ]),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(ImageConst.offers1),
                    // colorFilter: ColorFilter.mode(
                    //     ColorConst.home1OverlayColor.withOpacity(0.8),
                    //     BlendMode.darken),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "Tailor Sweing",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ).paddingLeft(20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.",
                      style: TextStyle(fontSize: 17),
                      maxLines: 10,
                    ).paddingOnly(left: 30, top: 20),
                  ),
                ],
              ),
            ],
          ).paddingOnly(top: 50, left: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    "Mesurement",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ).paddingLeft(20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.",
                      style: TextStyle(fontSize: 17),
                      maxLines: 10,
                    ).paddingOnly(left: 30, top: 20),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(ImageConst.offers2),
                    fit: BoxFit.fill,
                  ),
                ),
              ).paddingLeft(30),
            ],
          ).paddingOnly(top: 0, left: 0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(ImageConst.offers3),
                    // colorFilter: ColorFilter.mode(
                    //     ColorConst.home1OverlayColor.withOpacity(0.8),
                    //     BlendMode.darken),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "Ready-made",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ).paddingLeft(20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.",
                      style: TextStyle(fontSize: 17),
                      maxLines: 10,
                    ).paddingOnly(left: 30, top: 20),
                  ),
                ],
              ),
            ],
          ).paddingOnly(top: 0, left: 20),
        ],
      ),
    );
  }
}
