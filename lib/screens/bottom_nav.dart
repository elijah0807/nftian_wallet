// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart' as foundation;

// import 'package:nftian_wallet/screens/settings.dart';
// import 'package:nftian_wallet/style.dart';
// import 'package:sizer/sizer.dart';

// class NavigateScreen extends StatefulWidget {
//   @override
//   _NavigateScreenState createState() => _NavigateScreenState();
// }

// class _NavigateScreenState extends State<NavigateScreen> {
//   int currentTabIndex = 0;

//   onTapped(int index) {
//     setState(() {
//       currentTabIndex = index;
//     });
//   }

//   bool get isIos =>
//       foundation.defaultTargetPlatform == foundation.TargetPlatform.iOS;

//   Widget tab(
//     int currentIndex,
//   ) {
//     switch (currentIndex) {
//       case 0:
//         return HomeWallet();
//       // messagescren
//       case 1:
//         return Dapp();
//       case 2:
//         return Dex();
//       case 3:
//         return Settings();
//       default:
//         return Text('');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // import usermodel

//     if (isIos) {
//       return CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(items: [
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.shield,
//               color: Colors.white,
//               size: 45.sp,
//             ),
//             activeIcon: Icon(
//               Icons.shield,
//               color: textColor,
//               size: 45.sp,
//             ),
//             label: 'Wallet',
//             // style: TextStyle(color: Color(0xFF4D1BDB), fontSize: 12.0),
//           ),
//           BottomNavigationBarItem(
//               icon: Image.asset(
//                 'assets/images/dapp.png',
//                 width: 40.sp,
//                 height: 40.sp,
//               ),
//               activeIcon: Image.asset(
//                 'assets/images/dapp2.png',
//                 width: 40.sp,
//                 height: 40.sp,
//               ),
//               label: 'DApps'),
//           BottomNavigationBarItem(
//               icon: Image.asset(
//                 'assets/images/dex.png',
//                 width: 40.sp,
//                 height: 40.sp,
//               ),
//               activeIcon: Image.asset(
//                 'assets/images/dex2.png',
//                 width: 40.sp,
//                 height: 40.sp,
//               ),
//               label: 'DEX'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.settings,
//                 color: Colors.white,
//                 size: 40.sp,
//               ),
//               activeIcon: Icon(
//                 Icons.settings,
//                 color: textColor,
//                 size: 40.sp,
//               ),
//               label: 'Settings'),
//         ]),
//         tabBuilder: (context, index) {
//           switch (index) {
//             case 0:
//               return HomeWallet();
//               break;
//             case 1:
//               return Dapp();
//               break;
//             case 2:
//               return Dex();
//               break;
//             case 3:
//               return Settings();
//               break;

//             default:
//               return Text('');
//               break;
//           }
//         },
//       );
//     }
//     //Android Scafold
//     else {
//       return Scaffold(

//           // Body Where the content will be shown of each page index
//           body: tab(currentTabIndex),
//           bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: Theme.of(context).backgroundColor,
//             type: BottomNavigationBarType.fixed,
//             selectedItemColor: textColor,
//             unselectedItemColor: Color(0xFF626871),
//             currentIndex: currentTabIndex,
//             onTap: onTapped,
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.shield,
//                   color: Colors.white,
//                   size: 25.sp,
//                 ),
//                 activeIcon: Icon(
//                   Icons.shield,
//                   color: textColor,
//                   size: 25.sp,
//                 ),
//                 label: 'Wallet',
//                 // style: TextStyle(color: Color(0xFF4D1BDB), fontSize: 12.0),
//               ),
//               BottomNavigationBarItem(
//                   icon: Image.asset(
//                     'assets/images/dapp.png',
//                     width: 20.sp,
//                     height: 20.sp,
//                   ),
//                   activeIcon: Image.asset(
//                     'assets/images/dapp2.png',
//                     width: 20.sp,
//                     height: 20.sp,
//                   ),
//                   label: 'DApps'),
//               BottomNavigationBarItem(
//                   icon: Image.asset(
//                     'assets/images/dex.png',
//                     width: 20.sp,
//                     height: 20.sp,
//                   ),
//                   activeIcon: Image.asset(
//                     'assets/images/dex2.png',
//                     width: 20.sp,
//                     height: 20.sp,
//                   ),
//                   label: 'DEX'),
//               BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.settings,
//                     color: Colors.white,
//                     size: 25.sp,
//                   ),
//                   activeIcon: Icon(
//                     Icons.settings,
//                     color: textColor,
//                     size: 25.sp,
//                   ),
//                   label: 'Settings'),
//             ],
//           ));
//     }
//   }
// }
