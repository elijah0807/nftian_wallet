import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/screens/start.dart';
import 'package:nftian_wallet/style.dart';
import 'package:nftian_wallet/widgets/slider.dart';
import 'package:sizer/sizer.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.all(15.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IntroSlider(),
            InkWell(
              onTap: () {
                Get.to(() => StartScreen());
              },
              child: Container(
                padding: EdgeInsets.all(12.sp),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: AutoSizeText(
                  'Get Started',
                  presetFontSizes: [18, 20, 22],
                  style: TextStyle(
                    color: textColor,
                    // fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xfff2A2D3C),
                  borderRadius: BorderRadius.circular(8.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
