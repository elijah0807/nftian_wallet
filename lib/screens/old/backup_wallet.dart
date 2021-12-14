import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class BackUpWallet extends StatefulWidget {
  const BackUpWallet({Key? key}) : super(key: key);

  @override
  _BackUpWalletState createState() => _BackUpWalletState();
}

class _BackUpWalletState extends State<BackUpWallet> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        color: Theme.of(context).backgroundColor,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30.sp,
                ),
                AutoSizeText(
                  'Back up your wallet now!',
                  presetFontSizes: [22, 24, 26],
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                AutoSizeText(
                  'In the next step you will see 12 words that allows you to recover a wallet',
                  presetFontSizes: [16, 18, 20],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 30.h,
                  child: Image.asset(
                    'assets/images/5.png',
                    height: 30.h,
                    width: 30.h,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  // height: 20.h,
                  child: Column(
                    children: [
                      CheckboxListTile(
                        value: isSelected,
                        checkColor: Colors.white,
                        activeColor: textColor,
                        tileColor: Colors.white,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected = value!;
                          });
                        },
                        title: Text(
                          'I understand that if I loss my recovery words, I will not be able to access my wallet',
                          style: TextStyle(color: textColor, fontSize: 12),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        // margin: EdgeInsets.only(right: 30, left: 30),
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                          onPressed: isSelected
                              ? () {
                                  Get.toNamed('/create_passcode');
                                }
                              : null,
                          child: AutoSizeText(
                            'Continue'.toUpperCase(),
                            presetFontSizes: [18, 20, 22],
                            style: TextStyle(
                              letterSpacing: 1,
                              color: Colors.white,
                              // fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: isSelected ? textColor : Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
