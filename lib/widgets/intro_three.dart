import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class IntroThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              child: Image.asset(
                'assets/images/3.png',
                width: MediaQuery.of(context).size.width * 0.80,
              ),
              width: MediaQuery.of(context).size.width * 0.80,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GradientText(
                'Convenient \nTransaction',
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
          ],
        ),
        Column(
          children: [
            Container(
              //margin: EdgeInsets.only(top: 22),
              //padding: EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Color(0xfff2A2D3C),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xfff2A2D3C),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                      color: textColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
          ],
        ),
      ],
    );
  }
}
