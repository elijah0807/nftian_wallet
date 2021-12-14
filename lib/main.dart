import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nftian_wallet/pages.dart';
import 'package:nftian_wallet/screens/intro.dart';
import 'package:nftian_wallet/service_binder.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:sizer/sizer.dart';
import 'style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: <AppTheme>[
        AppTheme(
          id: "light",
          description: "light",
          data: ThemeData(
            // Real theme data
            primaryColor: lightBgColor,
            accentColor: Colors.red,
            backgroundColor: Colors.black,
            fontFamily: 'Sfpro',
            textTheme: TextTheme().apply(
              bodyColor: textColor,
              displayColor: textColor,
            ),
            scaffoldBackgroundColor: Colors.black,
          ),
        ),
        AppTheme(
          id: "dark",
          description: "dark",
          data: ThemeData(
            // Real theme data
            primaryColor: darkPrimaryColor,
            backgroundColor: darkBgColor,
            accentColor: Colors.red,
            fontFamily: 'Sfpro',
            scaffoldBackgroundColor: Colors.black,
          ),
        )
      ],
      child: ThemeConsumer(
        child: Builder(
            builder: (themeContext) => Sizer(
                  builder: (context, orientation, deviceType) {
                    return GetMaterialApp(
                      theme: ThemeProvider.themeOf(themeContext).data,
                      smartManagement: SmartManagement.keepFactory,
                      initialBinding: ServicesBinder(),
                      debugShowCheckedModeBanner: false,
                      // color: Theme.of(context).backgroundColor,
                      getPages: pages,
                      initialRoute: "/splash",
                    );
                  },
                )),
      ),
    );
  }
}
