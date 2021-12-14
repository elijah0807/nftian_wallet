import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class PriceAlerts extends StatefulWidget {
  const PriceAlerts({Key? key}) : super(key: key);

  @override
  _PriceAlertsState createState() => _PriceAlertsState();
}

class _PriceAlertsState extends State<PriceAlerts> {
  bool priceAlertStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: textColor,
        title: Text(
          'Price Alerts',
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
                  'Price Alerts',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                FlutterSwitch(
                  value: priceAlertStatus,
                  height: 20.sp,
                  width: 40.sp,
                  onToggle: (val) {
                    setState(() {
                      priceAlertStatus = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            AutoSizeText(
              'Get alerts for significant price changes of your favorites cryptocurrencies',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white38,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
