import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main(List<String> args) {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
    return Sizer(builder: (context, orientation, deviceType ) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(bottom: PreferredSize(
            preferredSize: const Size.fromHeight(300),
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    IconButton(icon: const Icon(Icons.menu), iconSize: 30.0, onPressed: () {},),
                    const Text('Customer App Bar', style: TextStyle(fontSize: 20.0),),
                    IconButton(icon: const Icon(Icons.settings), iconSize: 30.0, onPressed: () {},),
                  ],
                ),
              ),
            ),
          ),),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                height: 100.h,
                child: Column(
                  children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                      Container(

                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: Colors.white,
                          labelColor: Colors.black,
                          controller: tabController,
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          tabs: const [
                            Tab(
                              text: 'Tab 1',
                            ),
                            Tab(
                              text: 'Tab 2',
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Tab1(),
                        Tab2(),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      );
    });
  }
}

class Tab1 extends StatefulWidget {
  Tab1({Key? key}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Text('Tab1')
      ),
    );
  }
}

class Tab2 extends StatefulWidget {
  Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(child: Text('Tab2')),
    );
  }
}


   // appBar: PreferredSize(
        //   preferredSize: const Size.fromHeight(100),
        //   child: SafeArea(child: Container(
        //     padding: const EdgeInsets.all(20.0),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: const [
        //         Icon(Icons.menu, size: 40.0,),
        //         Text('Customer App Bar', style: TextStyle(fontSize: 20.0),),
        //         Icon(Icons.settings, size: 40.0,),
        //       ],
        //     ),
        //   ))
        // )