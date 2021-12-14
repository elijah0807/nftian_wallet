import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nftian_wallet/widgets/intro_one.dart';
import 'package:nftian_wallet/widgets/intro_three.dart';
import 'package:nftian_wallet/widgets/intro_two.dart';

class IntroSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      IntroOne(),
      IntroTwo(),
      IntroThree(),
    ];
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.8,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        //onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
      items: list,
    ));
  }
}
