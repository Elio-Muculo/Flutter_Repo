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
        height: 45.h,
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
      child: Stack(
        children: [
          Container(
            width: 100.w,
            height: 100.h,
            decoration: const BoxDecoration(
                color: Color(0xFF33c8c6),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Tabs(),
          ),
          
        ],
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
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              margin: EdgeInsets.only(top: 4.h),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF63d6d3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
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

class Freelancer extends StatelessWidget {
  const Freelancer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: const Text(
                'Freelancer',
                // style: TextStyle(color: Color.fromARGB(0, 0, 0, 0)),
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
            child: const Text(
              'Employeer',
              // style: TextStyle(color: Color.fromARGB(0, 0, 0, 0)),
          ),
        ),
      ],
    );
  }
}
