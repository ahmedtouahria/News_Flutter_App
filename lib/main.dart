import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
     /*  localizationsDelegates: const [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: const [
    Locale('ar'), // English, no country code
   // Locale('es', ''), // Spanish, no country code
  ], */
  fallbackLocale: const Locale('ar'),
  locale: Get.deviceLocale,
  textDirection: TextDirection.rtl,
      title: 'Material App',
      home: Home(),
      
    );
  }
}