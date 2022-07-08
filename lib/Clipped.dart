import 'package:flutter/material.dart';

import 'Routes.dart';

void main(List<String> args) {
  runApp(const Clipped());
}

class Clipped extends StatelessWidget {
  const Clipped({Key? key}) : super(key: key);
  static const String clipRect = '/rect';
  static const String clipOval = '/oval';
  static const String clipCircular = '/circular';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: ((context) => const HomeScreen()));
          case Clipped.clipCircular:
            return MaterialPageRoute(
                builder: ((context) => const ClippedRecct()));
          case Clipped.clipRect:
            return MaterialPageRoute(
                builder: ((context) => const ClippedRect()));
          case Clipped.clipOval:
            return MaterialPageRoute(
                builder: ((context) => const ClippedOval()));
          default:
            return MaterialPageRoute(
                builder: ((context) => const Errorhandle(
                      title: 'ROUTE NOT FOUND',
                    )));
        }
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Button(route: Clipped.clipRect, title: 'rectangular clip'),
            SizedBox(height: 10,),
            Button(route: Clipped.clipCircular, title: 'circular clip'),
            SizedBox(height: 10,),
            Button(route: Clipped.clipOval, title: 'Oval clip'),
          ],
        ),
      ),
    );
  }
}

class ClippedRecct extends StatelessWidget {
  const ClippedRecct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text('circular')
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  final String route;
  const Button({Key? key, required this.route, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Text(title),
    );
  }
}

class ClippedRect extends StatelessWidget {
  const ClippedRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text("Clipped rect art"),
      ),
    );
  }
}

class ClippedOval extends StatelessWidget {
  const ClippedOval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text("Clipped oval art"),
      ),
    );
  }
}
