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
  static const String clipPath = '/path';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          case Clipped.clipPath:
            return MaterialPageRoute(
                builder: ((context) => const ClippedPath()));
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
            SizedBox(height: 10,),
            Button(route: Clipped.clipPath, title: 'Custom clip'),
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
    return Scaffold(
      appBar: AppBar(title: const Text('Circular')),
      body: ClipRRect(
          borderRadius: BorderRadius.circular(250.0),
          child: Image.network(
            "https://images.unsplash.com/photo-1523285367489-d38aec03b6bd"
          ),
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
    return Scaffold(
      appBar: AppBar(title: const Text('Rect')),
      body: ClipRect(
        child: Container(
          child: Align(
            alignment: Alignment.center,
            widthFactor: 0.4,
            heightFactor: 1.0,
            child: Image.network(
              'https://images.unsplash.com/photo-1473992243898-fa7525e652a5'
            ),
          ),
        ),
      ),
    );
  }
}

class ClippedOval extends StatelessWidget {
  const ClippedOval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text('Oval')),
      body: ClipOval(
        child: Container(
          child: Image.network(
            'https://images.unsplash.com/photo-1523965671143-ac717f1cb928'
          ),
        ),
      ),
    );
  }
}

class ClippedPath extends StatelessWidget {
  const ClippedPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text('Oval')),
        body: ClipPath(
        clipper: TriangleClipper(),
        child: Image.network(
          "https://images.unsplash.com/photo-1513775192371-1b9d33760c3f"
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
      final path = Path();
      path
      ..moveTo(size.width/2, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();
      return path;
  }
  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

