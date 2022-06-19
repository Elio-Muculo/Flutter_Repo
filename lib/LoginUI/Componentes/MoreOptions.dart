import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MoreOptions extends StatelessWidget {
  const MoreOptions({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final double screenSize;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: screenSize * 0.03, 
              vertical: size.height * 0.01
          ),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.blueAccent),
          child: Row(
            children: [
              const Icon(
                Icons.facebook_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: size.height * 0.012,
              ),
              const Text(
                "Facebook",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
