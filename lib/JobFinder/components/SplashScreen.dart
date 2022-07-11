import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15.h,),
              Image.asset(
                'images/concept-of-remote-team.png'
              ),
              Container(
                width: 80.w,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('GET THE JOB THAT YOU DREAM.', 
                      style: TextStyle(color: const Color(0xFF1d2940), fontSize: 20.sp,),),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Text('lorem impsum its simple a dummy of text of the printing and typescripting industry', 
                        style: TextStyle(color: const Color(0xFF1d2940), fontSize: 20.sp,),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}