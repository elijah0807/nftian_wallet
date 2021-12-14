import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeWallet extends StatefulWidget {
  const HomeWallet({Key? key}) : super(key: key);

  @override
  _HomeWalletState createState() => _HomeWalletState();
}

class _HomeWalletState extends State<HomeWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Container(
            height: 40.h,
            color: textColor,
            padding: EdgeInsets.all(5),
            child: Container(
              height: 5.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.notifications_none_sharp,
                        size: 20.sp,
                        color: Colors.white,
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
                            Container(
                              padding: EdgeInsets.all(5),
                              height: 25.sp,
                              width: 90.sp,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: textColor,
                              ),
                              child: Text(
                                'Token',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Finance',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Collectibles',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/filter.svg',
                        height: 20.sp,
                        width: 20.sp,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  AutoSizeText(
                    '\$0.00',
                    presetFontSizes: [30, 32, 34],
                    style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  AutoSizeText(
                    'Multi-Coin Wallet 1',
                    presetFontSizes: [16, 18, 20],
                    style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 25.sp,
                  ),
                  Center(
                    child: Container(
                      width: 80.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white12,
                                foregroundColor: Colors.white,
                                radius: 25.sp,
                                child: Icon(
                                  FontAwesome5Solid.arrow_up,
                                  // color: Colors.,
                                  size: 20.sp,
                                ),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Text(
                                'Send',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white12,
                                foregroundColor: Colors.white,
                                radius: 25.sp,
                                child: Icon(
                                  FontAwesome5Solid.arrow_down,
                                  // color: Colors.,
                                  size: 20.sp,
                                ),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Text(
                                'Receive',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white12,
                                foregroundColor: Colors.white,
                                radius: 25.sp,
                                child: Icon(
                                  FontAwesome.tag,
                                  // color: Colors.,
                                  size: 20.sp,
                                ),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Text(
                                'Buy',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            // shrinkWrap: true,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/btc.svg',
                      // color: Colors.white,
                      width: 40,
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      width: 50.w,
                      child: AutoSizeText(
                        'Bitcoin',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      width: 20.w,
                      child: AutoSizeText(
                        '0 BTC',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/eth.svg',
                        color: Colors.white,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      width: 50.w,
                      child: AutoSizeText(
                        'Ethereum',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      width: 20.w,
                      child: AutoSizeText(
                        '0 ETH',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow[800],
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/bnb.svg',
                        color: Colors.white,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      width: 50.w,
                      child: AutoSizeText(
                        'BNB',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      width: 20.w,
                      child: AutoSizeText(
                        '0 BNB',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      width: 50.w,
                      child: AutoSizeText(
                        'Smart Chain',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Container(
                      width: 20.w,
                      child: AutoSizeText(
                        '0 BNB',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
