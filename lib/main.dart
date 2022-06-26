// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Login/ThemeWidget.dart';
import 'package:Login/whatsappUi/whatsapp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'customtheme.dart';
import 'LoginUI/LoginScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color whatsappGreen = Color.fromRGBO(18, 140, 126, 1.0);
    
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp( 
        useInheritedMediaQuery: true,
        themeMode: ThemeMode.dark,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: Whatsapp(),
      );
    });
  }
}
