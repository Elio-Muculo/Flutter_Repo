// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

class LayoutLesson extends StatelessWidget {
  const LayoutLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 200,
      width: 200,
      color: Colors.amber,
      child: Container(
        alignment: Alignment.bottomRight,
        color: Colors.blue,
        height: 100,
        width: 100,
        child: Container(
          color: Color.fromARGB(255, 212, 0, 166),
          height: 50,
          width: 50,
          child: const FittedBox(
            fit: BoxFit.cover,
          ),
        )
      ),
    );
  }  
}



