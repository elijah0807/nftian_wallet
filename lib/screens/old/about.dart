import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: textColor,
        title: Text(
          'About',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Rate Us on Play Market',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Terms of Service',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Support',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Make a suggestion',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20.sp,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Version',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    AutoSizeText(
                      '1.1',
                      style: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20.sp,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            Divider(
              color: Colors.white60,
            ),
            SizedBox(
              height: 10.sp,
            ),
          ],
        ),
      ),
    );
  }
}
