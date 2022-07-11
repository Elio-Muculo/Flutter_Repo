import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 100.h,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.height}) : super(key: key);
  final double height;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: preferredSize,
      // ignore: todo
      // TODO: Get ride of this Stack here.
      child: Align(
        alignment: Alignment.topCenter,
        child: 
          Container(
            width: 100.w,
            height: 45.h,
            decoration: const BoxDecoration(
                color: Color(0xFF33c8c6),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Tabs(),
          )
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'HOME',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            Container(
              height: 7.h,
              width: 90.w,
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              margin: EdgeInsets.only(top: 4.h),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF63d6d3),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: TabBar(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  unselectedLabelColor: Colors.white,
                  labelColor: const Color(0xFF33c8c6),
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  controller: tabController,
                  tabs: const [Text('Freelancer'), Text('Employer')]
                ),
              ),
            ),
          ],
        ),
        // ignore: todo
        // TODO: change this container with Stack 
       Container(
        padding: EdgeInsets.symmetric(vertical: 2.w),
        height: 10.h,
         child: TabBarView(
            controller: tabController,
            children: const [
              Freelancer(), 
              Employeer()
            ]
          ),
       ),
      ],
    );
  }
}


class Freelancer extends StatefulWidget {
  const Freelancer({Key? key}) : super(key: key);

  @override
  State<Freelancer> createState() => _FreelancerState();
}

class _FreelancerState extends State<Freelancer> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.w),
                child: TabBar(
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 5.w),
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: const Color.fromARGB(147, 255, 255, 255),
                  labelColor: const Color.fromARGB(255, 255, 255, 255),
                  indicatorColor: Colors.white,
                  controller: tabController,
                  tabs: const [
                    Text('All'), 
                    Text('Open'),
                    Text('Ongoing'),
                    Text('Done'),
                  ]
                ),
              ),
          ],
        ),
       Expanded(
         child: TabBarView(
            controller: tabController,
            children: const [
              Employeer(),
              Employeer(),
              Employeer(),
              Employeer()
            ]
          ),
       ),
      ],
    );
  }
}

class Employeer extends StatelessWidget {
  const Employeer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 100.w,
            decoration: BoxDecoration( 
              color: Colors.black
            ),
            child: const Text(
              'Employeer',
              // style: TextStyle(color: Color.fromARGB(0, 0, 0, 0)),
          ),
        ),
      ],
    );
  }
}
