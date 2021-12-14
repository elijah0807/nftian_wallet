import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class Dex extends StatefulWidget {
  const Dex({Key? key}) : super(key: key);

  @override
  _DexState createState() => _DexState();
}

class _DexState extends State<Dex> {
  bool isExchange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: !isExchange
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 12.h,
                  color: textColor,
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: 5.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            Container(
                              width: 70.w,
                              height: 30.sp,
                              padding: EdgeInsets.all(2.sp),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    height: 25.sp,
                                    width: 100.sp,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: textColor,
                                    ),
                                    child: Text(
                                      'Swap',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isExchange = true;
                                      });
                                    },
                                    child: Container(
                                      width: 100.sp,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Exchange',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15.sp),
                  margin: EdgeInsets.only(
                    left: 10.sp,
                    right: 10.sp,
                    top: 10.sp,
                  ),
                  height: 35.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'You Pay',
                                    presetFontSizes: [16, 18],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  AutoSizeText(
                                    '0',
                                    presetFontSizes: [26, 28],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  AutoSizeText(
                                    'Balance: 0 BNB',
                                    presetFontSizes: [14, 16],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/bnb.svg',
                                      color: Colors.yellow,
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    width: 40.sp,
                                    child: AutoSizeText(
                                      'BNB',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      presetFontSizes: [14, 16],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Stack(
                            overflow: Overflow.visible,
                            alignment: Alignment.centerRight,
                            children: [
                              Divider(
                                color: Colors.grey,
                              ),
                              Positioned(
                                right: 50,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.centerRight,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/sort.svg',
                                    color: textColor,
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    'You Get',
                                    presetFontSizes: [16, 18],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  AutoSizeText(
                                    '0',
                                    presetFontSizes: [26, 28],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  AutoSizeText(
                                    'Balance: 0 NWT',
                                    presetFontSizes: [14, 16],
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Image.asset(
                                      'assets/images/logo.png',
                                      // color: Colors.yellow,
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                    ),
                                    width: 40.sp,
                                    child: AutoSizeText(
                                      'NWT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                      ),
                                      presetFontSizes: [14, 16],
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20.sp,
                        width: 60.sp,
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: AutoSizeText(
                          '25%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 20.sp,
                        width: 60.sp,
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: AutoSizeText(
                          '50%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 20.sp,
                        width: 60.sp,
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: AutoSizeText(
                          '75%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 20.sp,
                        width: 60.sp,
                        padding: EdgeInsets.all(5.sp),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: AutoSizeText(
                          '100%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: AutoSizeText(
                    '1 BNB = 446.87019488 TWT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10.sp),
                      alignment: Alignment.center,
                      // margin: EdgeInsets.only(right: 30, left: 30),
                      height: 40.sp,
                      width: MediaQuery.of(context).size.width,
                      child: AutoSizeText(
                        'Swap'.toUpperCase(),
                        presetFontSizes: [14, 16, 18],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          // fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      decoration: BoxDecoration(
                        color: textColor,
                        borderRadius: BorderRadius.circular(5.sp),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Exchange(),
    );
  }

  Widget Exchange() {
    return Column(
      children: [
        Container(
          height: 12.h,
          color: textColor,
          padding: EdgeInsets.all(5),
          child: Container(
            height: 5.h,
            child: Column(
              children: [
                SizedBox(
                  height: 5.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                    Container(
                      width: 70.w,
                      height: 30.sp,
                      padding: EdgeInsets.all(2.sp),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isExchange = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: 25.sp,
                              width: 100.sp,
                              alignment: Alignment.center,
                              child: Text(
                                'Swap',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 100.sp,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            height: 25.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: textColor,
                            ),
                            child: Text(
                              'Exchange',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Body
        SizedBox(
          height: 10.sp,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.w,
              child: Padding(
                padding: EdgeInsets.all(5.sp),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: textColor,
                          radius: 15.sp,
                          child: Icon(
                            Icons.shield_outlined,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                        ),
                        Container(
                          width: 80.sp,
                          padding: EdgeInsets.all(5.sp),
                          child: AutoSizeText(
                            'NWT/BNB',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 10.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 30,
                            // width: 25.w - 6,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5.sp),
                                topLeft: Radius.circular(
                                  5.sp,
                                ),
                              ),
                            ),
                            child: Text(
                              'Buy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            // width: 25.w - 6,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5.sp),
                                topRight: Radius.circular(
                                  5.sp,
                                ),
                              ),
                            ),
                            child: Text(
                              'Sell',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          height: 40,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5.sp),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.sp),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              )),
                          child: TextFormField(
                            initialValue: '0.000299',
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -6,
                          left: 30,
                          child: Container(
                            color: Theme.of(context).backgroundColor,
                            child: AutoSizeText(
                              'Price BNB',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5.sp),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        // initialValue: '0.000299',
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Amount NFT',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20.sp,
                            // width: 60.sp,
                            padding: EdgeInsets.all(5.sp),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: AutoSizeText(
                              '25%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                          ),
                          Container(
                            height: 20.sp,
                            // width: 60.sp,
                            padding: EdgeInsets.all(5.sp),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: AutoSizeText(
                              '50%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                          ),
                          Container(
                            height: 20.sp,
                            // width: 60.sp,
                            padding: EdgeInsets.all(5.sp),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: AutoSizeText(
                              '75%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                          ),
                          Container(
                            height: 20.sp,
                            // width: 60.sp,
                            padding: EdgeInsets.all(5.sp),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: AutoSizeText(
                              '100%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100.sp,
                            child: AutoSizeText(
                              'Balance',
                              presetFontSizes: [14, 16],
                              style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          AutoSizeText(
                            '0 BNB',
                            presetFontSizes: [14, 16],
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100.sp,
                            child: AutoSizeText(
                              'Total',
                              presetFontSizes: [14, 16],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          AutoSizeText(
                            '0 BNB',
                            presetFontSizes: [14, 16],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      height: 30,
                      width: 50.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.sp),
                          topLeft: Radius.circular(5.sp),
                          bottomRight: Radius.circular(5.sp),
                          topRight: Radius.circular(5.sp),
                        ),
                      ),
                      child: Text(
                        'Buy NWT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Container(
                width: 45.w,
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            'Price BNB',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            'Amount',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.33399494',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0055555',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.33399494',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0055555',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.33399494',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0055555',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.33399494',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0055555',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.33399494',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0055555',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.33399494',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0055555',
                            style: TextStyle(
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          '0.2983839',
                          style: TextStyle(
                            color: Colors.red[700],
                          ),
                        ),
                        Icon(
                          Icons.arrow_downward_rounded,
                          color: Colors.red[700],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.3664755858',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0043445',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.3664755858',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0043445',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.3664755858',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0043445',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.3664755858',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0043445',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.3664755858',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0043445',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            '0.3664755858',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                        Container(
                          width: 20.w,
                          alignment: Alignment.centerRight,
                          child: AutoSizeText(
                            '0.0043445',
                            style: TextStyle(
                              color: Colors.green[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
