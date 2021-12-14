import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool passcodeStatus = true;
  bool securityStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: textColor,
        title: Text(
          'Security',
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
                  'Passcode',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                FlutterSwitch(
                  value: passcodeStatus,
                  height: 20.sp,
                  width: 40.sp,
                  onToggle: (val) {
                    setState(() {
                      passcodeStatus = val;
                    });
                  },
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Auto-Lock',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                AutoSizeText(
                  'Immediate',
                  style: TextStyle(
                    color: Colors.white38,
                  ),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Lock Method',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                AutoSizeText(
                  'Passcode/Biometric',
                  style: TextStyle(
                    color: Colors.white38,
                  ),
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
            AutoSizeText(
              'Ask authentication for',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Transaction Signing',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                FlutterSwitch(
                  value: securityStatus,
                  height: 20.sp,
                  width: 40.sp,
                  onToggle: (val) {
                    setState(() {
                      securityStatus = val;
                    });
                  },
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
          ],
        ),
      ),
    );
  }
}
