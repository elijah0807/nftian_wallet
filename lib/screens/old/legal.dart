import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class LegalScreen extends StatefulWidget {
  const LegalScreen({Key? key}) : super(key: key);

  @override
  _LegalScreenState createState() => _LegalScreenState();
}

class _LegalScreenState extends State<LegalScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: textColor,
        title: Text('Legal'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                AutoSizeText(
                  'Please review the NFTian Wallet Terms of Service and Privacy Policy',
                  presetFontSizes: [14, 15, 16],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Container(
                  // height: 10.h,
                  child: Card(
                    color: Theme.of(context).backgroundColor,
                    elevation: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100.sp,
                                  child: Text(
                                    'Privacy Policy',
                                    style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: textColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: InkWell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100.sp,
                                  child: Text(
                                    'Terms of Service',
                                    style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: textColor,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CheckboxListTile(
                  value: isSelected,
                  checkColor: Colors.white,
                  activeColor: textColor,
                  // tileColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                  title: Text(
                    'I\'ve read and accept the Terms of Service and Privacy Policy',
                    style: TextStyle(color: textColor),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  // margin: EdgeInsets.only(right: 30, left: 30),
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: isSelected
                        ? () {
                            Get.toNamed('/backup');
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
          )
        ],
      ),
    );
  }
}
