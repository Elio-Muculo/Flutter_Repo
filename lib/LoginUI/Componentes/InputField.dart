import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.screenSize,
    required this.text,
    required this.type,
  }) : super(key: key);

  final double screenSize;
  final String text;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(2.5.w),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
        labelText: text,
        labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 12.sp),
      ),
      keyboardType: type,
    );
  }
}
