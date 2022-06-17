// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MD extends StatelessWidget {
  const MD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    return LayoutBuilder(
      builder: ((context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 390,
              child: Container(
                alignment: Alignment.center,
                height: screenWidth * 0.9,
                width: screenHeight * 0.5,
                color: Colors.amber,
                child: Text(constraints.maxWidth.toString())
              ),
            )
          ],
        );
      })
    );
  }
}
