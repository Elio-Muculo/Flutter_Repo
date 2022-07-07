import 'package:flutter/material.dart';

import 'Routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Provide a function to handle named routes.
      // Use this function to identify the named
      // route being pushed, and create the correct
      // Screen.
      onGenerateRoute: Routes.generateR,
      routes: {ExtractArgumentsScreen.routeName: ((context) => const ExtractArgumentsScreen())},
      title: 'Navigation with Arguments',
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // A button that navigates to a named route.
            // The named route extracts the arguments
            // by itself.
            ElevatedButton(
              onPressed: () {
                // When the user taps the button,
                // navigate to a named route and
                // provide the arguments as an optional
                // parameter.
                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Extract Arguments Screen',
                    'This message is extracted in the build method.',
                  ),
                );
              },
              child: const Text('Link 1 - use ModalRoute'),
            ),
            // A button that navigates to a named route.
            // For this route, extract the arguments in
            // the onGenerateRoute function and pass them
            // to the screen.
            ElevatedButton(
              onPressed: () {
                // When the user taps the button, navigate
                // to a named route and provide the arguments
                // as an optional parameter.
                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Accept Arguments Screen',
                    'This message is extracted in the onGenerateRoute '
                        'function.',
                  ),
                );
              },
              child: const Text('Link 2 - constructor'),
            ),
          ],
        ),
      ),
    );
  }
}

// A Widget that extracts the necessary arguments from
// the ModalRoute.
class ExtractArgumentsScreen extends StatelessWidget {
  // final ScreenArguments args;
  const ExtractArgumentsScreen({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

// A Widget that accepts the necessary arguments via the
// constructor.
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  // This Widget accepts the arguments as constructor
  // parameters. It does not extract the arguments from
  // the ModalRoute.
  //
  // The arguments are extracted by the onGenerateRoute
  // function provided to the MaterialApp widget.
  const PassArgumentsScreen({
    super.key,
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

// You can pass any object to the arguments parameter.
// In this example, create a class that contains both
// a customizable title and message.
class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
