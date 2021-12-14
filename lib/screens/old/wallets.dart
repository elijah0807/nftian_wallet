import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: textColor,
        title: Text(
          'Wallets',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40.sp),
              child: AutoSizeText(
                'Multi-Coin Wallets',
                presetFontSizes: [14, 16],
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10.sp),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white38,
                        child: Icon(
                          Icons.shield_outlined,
                          color: textColor,
                        ),
                      ),
                      Positioned(
                        right: -5,
                        top: -5,
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                          size: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 60.w,
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Multi-Coin Wallet 1',
                          presetFontSizes: [14, 16],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        AutoSizeText(
                          'Multi-Coin Wallet',
                          presetFontSizes: [13, 14],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 20.sp,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
