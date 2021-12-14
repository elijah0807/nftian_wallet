import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/controller/splash_screenController.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GetBuilder<SplashScreenController>(
        builder: (_) {
          return Scaffold(
            body: Container(
              color: Theme.of(context).backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    // height: 70.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FadeInUp(
                          child: Image.asset(
                            "assets/images/logo.png",
                            // height: 75.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: GradientText(
                            'NFTIAN',
                            style: TextStyle(
                              fontSize: 90.0,
                              fontWeight: FontWeight.bold,
                            ),
                            colors: [
                              Color(0xffA9CDFF),
                              Color(0xff72F6D1),
                              Color(0xffA0ED8D),
                              Color(0xffFED365),
                              Color(0xffFAA49E),
                            ],
                          ),
                        ),
                        AutoSizeText(
                          'Millions \nof people \nparticipate',
                          presetFontSizes: [70, 75],
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
