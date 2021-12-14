import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class PushNotificationsScreen extends StatefulWidget {
  const PushNotificationsScreen({Key? key}) : super(key: key);

  @override
  _PushNotificationsScreenState createState() =>
      _PushNotificationsScreenState();
}

class _PushNotificationsScreenState extends State<PushNotificationsScreen> {
  bool notificationStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: textColor,
        title: Text(
          'Push Notifications',
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
                  'Allow Push Notification',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                FlutterSwitch(
                  value: notificationStatus,
                  height: 20.sp,
                  width: 40.sp,
                  onToggle: (val) {
                    setState(() {
                      notificationStatus = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AutoSizeText(
                  'Send and Receive',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                FlutterSwitch(
                  value: true,
                  height: 20.sp,
                  width: 40.sp,
                  disabled: true,
                  activeToggleColor: Colors.grey,
                  activeColor: Colors.white30,
                  onToggle: (val) {
                    setState(() {
                      notificationStatus = val;
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
            AutoSizeText(
              'You will be notified for sent and received transactions',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white38,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
