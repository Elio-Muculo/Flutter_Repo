import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  6.h,
      width: 85.w,
      decoration: const BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(15.0))
      ),
      child: Center(
        child: Text(
            "Sign In",
          style: TextStyle(color:  Colors.white, fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
      ),
    );
  }
}