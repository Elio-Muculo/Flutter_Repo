import 'package:flutter/material.dart';

class AssetsLesson extends StatelessWidget {
  const AssetsLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/log.png',
          alignment: Alignment.bottomLeft,
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
          // errorBuilder: , // when image fail to load call this propriety and handle the error.
        ),
      ]
    );
  }
}