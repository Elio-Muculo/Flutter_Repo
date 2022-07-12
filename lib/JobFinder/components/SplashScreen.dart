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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45.h,
                  child: Image.asset(
                    'assets/images/concept-of-remote-team.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 2.h,),
                Flexible(
                  child: Container(
                    width: 85.w,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('GET THE JOB', 
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFF1d2940), fontSize: 20.sp,),),
                        Text('THAT YOU DREAM.', 
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFF1d2940), fontSize: 20.sp,),),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.5.h),
                          child: Text('lorem impsum its simple a dummy of text of the printing and typescripting industry',
                            textAlign: TextAlign.center, 
                            style: TextStyle(color: Colors.black38, fontSize: 12.sp, height: 1.25),),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF1d2940),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0)
                      )
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 20.w),
                      child: Text('Start', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}