import 'package:Login/ContainerLesson.dart';
import 'package:flutter/material.dart';

import 'NavigationR.dart';

class Routes {
  static const signIn = '/';
  static const signUp = '/signUp';
  static const deep = '/signUp/moreDeep';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      Routes.signIn: (context) => FirstScreen(),
      Routes.signUp: (context) => SecondScreen(),
      Routes.deep: (context) => ContainerLesson(),
    };
  }
}


