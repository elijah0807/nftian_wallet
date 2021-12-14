import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/style.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class CreatePassCode extends StatefulWidget {
  const CreatePassCode({Key? key}) : super(key: key);

  @override
  _CreatePassCodeState createState() => _CreatePassCodeState();
}

class _CreatePassCodeState extends State<CreatePassCode> {
  String text = '';
  _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                AutoSizeText(
                  'Enter a new passcode',
                  presetFontSizes: [16, 18, 20],
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.all(60.sp),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 6,
                    obscureText: true,
                    obscuringCharacter: '*',
                    // backgroundColor: textColor,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.circle,
                      // borderRadius: BorderRadius.circular(10),
                      fieldHeight: 30,
                      fieldWidth: 30,
                      activeFillColor: Colors.white,
                      activeColor: textColor,
                      inactiveColor: textColor,
                    ),
                    onChanged: (String value) {},
                  ),
                ),
              ],
            ),
            Column(
              children: [
                NumericKeyboard(
                  onKeyboardTap: _onKeyboardTap,
                  textColor: textColor,
                  rightButtonFn: () {
                    setState(() {
                      text = text.substring(0, text.length - 1);
                    });
                  },
                  rightIcon: Icon(
                    Icons.backspace,
                    color: textColor,
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/recovery_phrase');
                  },
                  child: AutoSizeText(
                    'Adds an extra layer of security when using this app',
                    style: TextStyle(
                      color: textColor,
                    ),
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
