import 'package:get/get.dart';
import 'package:nftian_wallet/controller/splash_screenController.dart';

import 'package:nftian_wallet/screens/bottom_nav.dart';
import 'package:nftian_wallet/screens/intro.dart';
import 'package:nftian_wallet/screens/splashScreen.dart';

List<GetPage> pages = [
  GetPage(
      name: '/splash',
      page: () => SplashScreen(),
      binding: BindingsBuilder(() {
        Get.put(SplashScreenController());
      })),
  GetPage(
    name: '/intro',
    page: () => IntroScreen(),
  ),
];
