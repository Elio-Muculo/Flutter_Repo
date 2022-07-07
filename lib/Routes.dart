// ignore: file_names
import 'package:Login/ContainerLesson.dart';
import 'package:flutter/material.dart';

import 'NavigationR.dart';

class Routes {
  static const home = '/';
  static const signUp = '/signUp';
  static const details = '/details';

  static Map<String, WidgetBuilder> generate() {
    return {
      Routes.details: (context) => const DetailsScreen(),
      Routes.home: (context) => const ContainerLesson()
    };
  }
}







