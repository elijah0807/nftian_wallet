import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: textColor,
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Icon(FontAwesome5Solid.wallet,
                        color: Colors.white, size: 20.sp),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/wallets');
                    },
                    child: Container(
                      width: 200.sp,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Wallets',
                            presetFontSizes: [16, 18],
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          AutoSizeText(
                            'Multi-Coin Wallets 1',
                            presetFontSizes: [13, 14],
                            style: TextStyle(
                              color: textColor,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Divider(
                color: Colors.white38,
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome5Solid.lock,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/security');
                    },
                    child: Container(
                      width: 200.sp,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Security',
                            presetFontSizes: [16, 18],
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/push_notifications');
                    },
                    child: Container(
                      width: 200.sp,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Push Notifications',
                            presetFontSizes: [16, 18],
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/preferences');
                    },
                    child: Container(
                      width: 200.sp,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Preferences',
                            presetFontSizes: [16, 18],
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Divider(color: Colors.white38),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome5Solid.dollar_sign,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/price_alerts');
                    },
                    child: Container(
                      width: 200.sp,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Price Alerts',
                            presetFontSizes: [16, 18],
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome5Solid.wallet,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  Container(
                    width: 200.sp,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'WalletConnect',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Divider(
                color: Colors.white38,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  'Join Community',
                  presetFontSizes: [16, 18],
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome5Solid.question,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  Container(
                    width: 200.sp,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Help Center',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome.twitter,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  Container(
                    width: 200.sp,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Twitter',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome.telegram,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  Container(
                    width: 200.sp,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Telegram',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome.facebook,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  Container(
                    width: 200.sp,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Facebook',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome.reddit,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  Container(
                    width: 200.sp,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Reddit',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome.youtube,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  Container(
                    width: 200.sp,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Youtube',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: 15.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.sp,
                    height: 30.sp,
                    margin: EdgeInsets.only(
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(
                        10.sp,
                      ),
                    ),
                    child: Icon(
                      FontAwesome.heart,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/about');
                    },
                    child: Container(
                      width: 200.sp,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'About',
                            presetFontSizes: [16, 18],
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
