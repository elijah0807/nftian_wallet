import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:nftian_wallet/style.dart';
import 'package:sizer/sizer.dart';

class Dapp extends StatefulWidget {
  const Dapp({Key? key}) : super(key: key);

  @override
  _DappState createState() => _DappState();
}

class _DappState extends State<Dapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Container(
            height: 15.h,
            color: textColor,
            padding: EdgeInsets.all(5),
            child: Container(
              height: 15.h,
              width: 100.w,
              child: Column(
                children: [
                  SizedBox(
                    height: 5.5.h,
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      1.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: TextField(
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Search or Enter website url',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(15.sp),
                        prefixIcon: Icon(
                          FontAwesome.search,
                          size: 10.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
