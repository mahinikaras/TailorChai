import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tailor_chai_mobile_app/Constants/color_cons.dart';

import '../Constants/image_const.dart';
import 'package:nb_utils/nb_utils.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageConst.appLogo),
                    // colorFilter: ColorFilter.mode(
                    //     ColorConst.home1OverlayColor.withOpacity(0.8),
                    //     BlendMode.darken),
                    fit: BoxFit.fill,
                  ),
                ),
              ).paddingTop(30.0),
            ],
          ),
          Text(
            "Why Use Our Service ?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ).paddingTop(20.0),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac felis donec et odio. Scelerisque purus semper eget duis at tellus. Tempus iaculis urna id volutpat lacus laoreet non curabitur. Mi eget mauris pharetra et ultrices neque ornare aenean euismod. Consequat nisl vel pretium lectus. Molestie a iaculis at erat pellentesque. Ullamcorper eget nulla facilisi etiam dignissim diam. Diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Neque aliquam vestibulum morbi blandit cursus risus at ultrices. Placerat vestibulum lectus mauris ultrices eros. Posuere lorem ipsum dolor sit. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus. Nec nam aliquam sem et tortor consequat id. Non consectetur a erat nam at. Sit amet risus nullam eget felis.",
            style: TextStyle(
              fontSize: 16,
            ),
            maxLines: 10,
            textAlign: TextAlign.justify,
          ).paddingAll(15),
          Divider(
            height: 1.0,
            thickness: 2,
            color: ColorConst.appTheme,
          ).paddingOnly(
            right: 30,
            left: 30,
          ),
          Text(
            "Contact Us On",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ).paddingAll(10.0),
          Text(
            "+8801234567891",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.facebook),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.instagram),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.linkedin),
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.reddit),
              )
            ],
          ).paddingTop(10)
        ],
      ),
    );
  }
}
