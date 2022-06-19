import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.of(context).size.width;
    final double screenH = MediaQuery.of(context).size.height;

    return SizedBox(
      width: double.infinity,
      height: screenH,
      child: Stack(       
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 210, 223, 221),
                    Color.fromARGB(222, 163, 183, 183),
                  ],
                  )
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
