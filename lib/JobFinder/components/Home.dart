
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../data/job_list.dart';
import '../model/job.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(LineIcons.creativeCommonsNoDerivativeWorks, color: Colors.black87, size: 22.sp,),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: Row(
              children: [
                Icon(LineIcons.sms, color: Colors.black87, size: 22.sp,),
                SizedBox(width: 2.5.w),
                Icon(LineIcons.bell, color: Colors.black87, size: 22.sp,)
              ]
            ), 
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(  
            padding: EdgeInsets.only(top: 5.5.w, right: 3.w, left: 3.w),
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Beca👋", style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w800, color: const Color.fromRGBO(29, 41, 64, 1.0))),
                        SizedBox(height: 0.6.w),
                        Text("The purpose of life is a life of purpose.", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600, color: Colors.black45)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 4.w),
                      child: Image.asset("assets/images/avatar.png", width: 12.w,)
                    ),
                  ],
                ), 
                SizedBox(height: 9.w,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                  ),
                  child: const TextField( 
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(LineIcons.sistrix, color: Colors.grey,),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Search Job"
                    ),
                  ),
                ),
                SizedBox(height: 9.w,),
                Text("Suggested Job", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color.fromRGBO(29, 41, 64, 1.0)),),
                SizedBox(height: 2.8.w,),
                _makeSuggestedJobsEl(),
                SizedBox(height: 9.w),
                Text("New Arrivals", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: Color.fromRGBO(29, 41, 64, 1.0))),
                SizedBox(height: 2.8.w),
                _makeNewArrivalsEl(Theme.of(context).scaffoldBackgroundColor),
              ],
            ),
          ),
        ),
      )
    );
  } 
}

/// Make suggested jobs slider widget.
Widget _makeSuggestedJobsEl() {
  List<Widget> contents = [];
  contents.add(_makeSuggestedJobCardEl(JobList.spotifyJob));
  contents.add(SizedBox(width: 4.w));
  contents.add(_makeSuggestedJobCardEl(JobList.microsoftJob));
  contents.add(SizedBox(width: 4.w));
  contents.add(_makeSuggestedJobCardEl(JobList.googleJob1));
  contents.add(SizedBox(width: 4.w));
  contents.add(_makeSuggestedJobCardEl(JobList.spotifyJob));
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: contents,
    ),
  );
}


// / Make new arrival jobs widget.
Widget _makeNewArrivalsEl(Color color) {
  return Column(
    children: [
      _makeNewArrivalJobEl(JobList.teslaJob, color),
      SizedBox(height: 4.w),
      _makeNewArrivalJobEl(JobList.twitterJob, color),
      SizedBox(height: 4.w),
      _makeNewArrivalJobEl(JobList.teslaJob, color),
      SizedBox(height: 4.w),
      _makeNewArrivalJobEl(JobList.googleJob2, color),
    ],
  );
}

/// Make suggested job card widget.
Widget _makeSuggestedJobCardEl(Job job) {
  return Container(
    height: 46.5.w,
    width: 40.w,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      color: Colors.teal.withOpacity(0.1),
    ),
    child: Center(
      child: Column(
        children: [
          SizedBox(height: 3.h),
          Flexible(flex: 2, child: Image.asset("assets/icons/${job.image}", width: 7.5.w)),
          SizedBox(height: 8.5.w),
          Flexible(child: Text(job.position, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp))),
          SizedBox(height: 1.w),
          Flexible(child: Text(job.company, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 9.sp, color: Colors.grey))),
          SizedBox(height: 6.5.w),
          Flexible(child: Text(job.site, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10.sp))),
          SizedBox(height: 3.h),
        ],
      ),
    ),
  );
}


/// Make new arrival job widget.
Widget _makeNewArrivalJobEl(Job job, Color color) {
  return Container(
    height: 13.h,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 0.1),
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      color: color,
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/icons/${job.image}", width: 10.w),
              SizedBox(width: 6.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(job.position, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp)),
                  SizedBox(height: 0.75.h),
                  Text(job.company, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10.sp, color: Colors.grey)),
                ],
              ),
            ],
          ),
          Icon(LineIcons.chevronCircleRight, size: 8.w,),
        ],
      ),
    )
  );
}
