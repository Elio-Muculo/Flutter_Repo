// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Background.dart';
import 'Componentes/InputField.dart';
import 'Componentes/MoreOptions.dart';
import 'Componentes/SubmitButton.dart';
import 'Componentes/TopTitle.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double screenSize = MediaQuery.of(context).size.width;
    return Background(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TopTitle(screenSize: screenSize),
          Container(
            margin: EdgeInsets.only(top: 7.h, bottom: 1.h),
            padding:  EdgeInsets.symmetric(horizontal: 0, vertical: 1.h),
            width: 85.w,
            child: InputField(
                screenSize: screenSize,
                text: "Email Andress",
                type: TextInputType.emailAddress
              ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 1.h),
              width: 85.w,
              child: InputField(
                  screenSize: screenSize,
                  text: "Password",
                  type: TextInputType.phone
              )
          ),
          Container(
            margin: EdgeInsets.only(bottom: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 2.h),
            child: SubmitButton(screenSize: screenSize)
          ),
          Center(
            child: Text("Don\'t have account?",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.5.sp,
                )),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Line(screenSize: screenSize),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: const Text("OR"),
              ),
              Line(screenSize: screenSize),
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          MoreOptions(screenSize: screenSize),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 1,
      color: Colors.black38,
    );
  }
}
