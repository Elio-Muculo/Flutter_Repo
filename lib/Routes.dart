// ignore: file_names
import 'package:Login/ContainerLesson.dart';
import 'package:flutter/material.dart';

import 'NavigationR.dart';

class Routes {
  static const signIn = '/';
  static const signUp = '/signUp';
  static const deep = '/signUp/moreDeep';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.signIn: (context) => const FirstScreen(),
      Routes.signUp: (context) => const SecondScreen(),
      Routes.deep: (context) => const ContainerLesson(),
    };
  }
}


