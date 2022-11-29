import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:signin/src/features/authentification/screens/login/login_screen.dart';
import 'package:signin/src/localization/app_localizations.dart';
import 'package:signin/src/localization/controller.dart';
import 'package:signin/src/routing/router_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(LocaleCont());
    return GetBuilder<LocaleCont>(
      builder: (cont) => MaterialApp(
        locale: cont.locale,
        debugShowCheckedModeBanner: false,
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          for (var locale in supportedLocales) {
            if (locale.languageCode == deviceLocale!.languageCode &&
                locale.countryCode == deviceLocale.countryCode) {
              return deviceLocale;
            }
          }
          return supportedLocales.first;
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: generateRoute,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalization.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('uk', 'UK'),
        ],
        home: const LoginScreen(),
      ),
    );
  }
}
