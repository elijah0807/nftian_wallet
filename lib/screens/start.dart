import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/style.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/4.png',
                    width: MediaQuery.of(context).size.width * 0.80,
                  ),
                  width: MediaQuery.of(context).size.width * 0.80,
                ),
              ),
              SizedBox(
                height: 70.sp,
              ),
              Padding(
                padding: EdgeInsets.all(15.sp),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GradientText(
                    'Wallet setup',
                    style: TextStyle(
                      fontSize: 50.0,
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
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.sp),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    // Get.to(() => StartScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.all(15.sp),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'Import Using Seed Phrase',
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
                SizedBox(
                  height: 10.sp,
                ),
                InkWell(
                  onTap: () {
                    // Get.to(() => StartScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.all(15.sp),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'Create a New Wallet',
                      presetFontSizes: [18, 20, 22],
                      style: TextStyle(
                        color: Color(0xfff2A2D3C),
                        // fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: textColor,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
