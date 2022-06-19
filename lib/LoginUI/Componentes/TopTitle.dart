import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TopTitle extends StatelessWidget {
  const TopTitle({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final double screenSize;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text(
        "Sign In",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
