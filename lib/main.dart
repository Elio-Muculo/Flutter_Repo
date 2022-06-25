// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:Login/ThemeWidget.dart';
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

    
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp( 
        darkTheme: customDarkTheme(),
        theme: customLightTheme(),
        themeMode: ThemeMode.system,
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Elliot.Dev'),
            backgroundColor: Theme.of(context).primaryColorLight,
            actions: const [
              Icon(Icons.more_vert, color: Colors.white),
            ],
            elevation: 2.0,
          ),
          body: SafeArea(child: ThemeLesson()),
          // bottomNavigationBar: bottomMenu,
          // floatingActionButton: floatButton,
          // drawer: hiddenMenu,
        ),
      );
    });
  }
}
