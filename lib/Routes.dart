// ignore: file_names

import 'package:Login/ContainerLesson.dart';
import 'package:flutter/material.dart';

import 'NavigationR.dart';

class Errorhandle extends StatelessWidget {
  const Errorhandle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text("error"))),
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

  // If you push the PassArguments route

  static Route<dynamic> generateR(RouteSettings settings) {
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: ((context) => const HomeScreen()));
        case ExtractArgumentsScreen.routeName:
        final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(builder: ((context) => ExtractArgumentsScreen(args: args)));
        case PassArgumentsScreen.routeName:
        final args = settings.arguments as ScreenArguments;
          return MaterialPageRoute(
              builder: (context) => PassArgumentsScreen(
                    title: args.title,
                    message: args.message,
                  ));
        default:
          return MaterialPageRoute(
              builder: ((context) => const ContainerLesson()));
      }
  }
}
