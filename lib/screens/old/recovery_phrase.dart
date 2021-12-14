import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class RecoveryPhrase extends StatefulWidget {
  const RecoveryPhrase({Key? key}) : super(key: key);

  @override
  _RecoveryPhraseState createState() => _RecoveryPhraseState();
}

class _RecoveryPhraseState extends State<RecoveryPhrase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  AutoSizeText(
                    'Your recovery phrase',
                    presetFontSizes: [
                      22,
                      24,
                    ],
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  AutoSizeText(
                    'Write down or copy these words in the right order and save them somewhere safe',
                    presetFontSizes: [
                      16,
                      18,
                    ],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
              Container(
                height: 20.h,
                color: Colors.white12,
                child: Center(
                  child: Wrap(
                    // runAlignment: WrapAlignment.spaceBetween,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    spacing: 10,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '1 cruel',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '2 best',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '3 sugar',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '4 honey',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '5 denver',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '6 train',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '7 cash',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '8 sing',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '9 man',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '10 don',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '11 opinion',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: AutoSizeText(
                          '12 social',
                          presetFontSizes: [16, 18],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 5.h,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Copy',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.sp),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(5.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    color: Colors.red.shade200,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.warning,
                        color: Colors.red,
                      ),
                      Text(
                        'Never share recovery phrase with anyone, store it securely',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  padding: EdgeInsets.all(5.sp),
                  // margin: EdgeInsets.only(right: 30, left: 30),
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed('/verify_recovery_phrase');
                    },
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
                    color: textColor,
                    borderRadius: BorderRadius.circular(5.sp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
