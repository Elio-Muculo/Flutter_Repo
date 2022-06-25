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
        const Icon(
          Icons.add_alarm,
          color: Colors.amber,
          size: 40,
          textDirection: TextDirection.rtl,
        ),
        IconButton( // button, mas com icon no lugar do texto. com evento ao clicar no button,
          onPressed: () => {},  // event when press the button
          icon: const Icon(
            Icons.add_alarm,
            color: Color.fromARGB(255, 7, 65, 255),
            size: 40,
            textDirection: TextDirection.rtl,
          ),
        ),
      ]
    );
  }
}