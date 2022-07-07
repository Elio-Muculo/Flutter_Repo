// ignore: file_names

import 'package:Login/ContainerLesson.dart';
import 'package:Login/Todos.dart';
import 'package:flutter/material.dart';

import 'NavigationR.dart';

class Errorhandle extends StatelessWidget {
  final String? title;
  const Errorhandle({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center(child: Text("$title"))),
    );
  }
}

class Routes {
  static const home = '/';
  static const signUp = '/signUp';
  static const details = '/details';

  static Map<String, WidgetBuilder> generate() {
    return {
      // Routes.details: (context) => const DetailsScreen(),
      Routes.home: (context) => const ContainerLesson()
    };
  }

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.details:
        if (args is Todo) {
          return MaterialPageRoute(
              builder: ((context) => DetailScreen(todo: args)));
        } else {
          return MaterialPageRoute(
              builder: ((context) => const Errorhandle(title: 'not a list')));
        }
      default:
        return MaterialPageRoute(builder: ((context) => const Errorhandle()));
    }
  }

  // static Route<dynamic> generateR(RouteSettings settings) {
  //     switch (settings.name) {
  //       case '/':
  //         return MaterialPageRoute(builder: ((context) => const HomeScreen()));
  //       // case ExtractArgumentsScreen.routeName:
  //       // final args = settings.arguments as ScreenArguments;
  //         // return MaterialPageRoute(builder: ((context) => ExtractArgumentsScreen()));
  //       case PassArgumentsScreen.routeName:
  //       final args = settings.arguments as ScreenArguments;
  //         return MaterialPageRoute(
  //             builder: (context) => PassArgumentsScreen(
  //                   title: args.title,
  //                   message: args.message,
  //                 ));
  //       default:
  //         return MaterialPageRoute(
  //             builder: ((context) => const ContainerLesson()));
  //     }
  // }
}
