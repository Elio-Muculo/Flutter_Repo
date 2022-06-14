import 'package:flutter/material.dart';


class StackLesson extends StatelessWidget {
  const StackLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topLeft,
        children: [
          Container(
            color: const Color.fromARGB(255, 255, 131, 7), 
            width: 300, 
            height: 300,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.black,
          ),
          Container(
            height: 130,
            width: 130,
            color: Colors.blue,
          ),
          Positioned(
            top: 200,
            left: 40,
            width: 200, 
            height: 200,
            child: Container(
              height: 100,
              width: 100,
              color:const Color.fromARGB(255, 223, 38, 183),  
            ),
          )
        ]
        ),
    );
  }
}

