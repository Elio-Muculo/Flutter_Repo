import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> with TickerProviderStateMixin {
  Color whatsappGreen = const Color.fromRGBO(18, 140, 126, 1.0);
  Color whatsappLight = const Color.fromRGBO(37, 211, 102, 1.0);

  late TabController tabController;
  var fabIcon  = const Icon(Icons.message);

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = const Icon(Icons.message);
              break;
            case 2:
              fabIcon = const Icon(Icons.camera_enhance);
              break;
            case 3:
              fabIcon = const Icon(Icons.call);
              break;
            default:
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Whatsapp',
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: whatsappGreen,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 2.w,),
            child: const Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            ),
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Icon(Icons.camera_alt),
          Text("Chat Screen"),
          Text("Status Screen"),
          Text("Call Screen"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {} ,
        child: fabIcon,
        backgroundColor: whatsappLight,
      ),
    );
  }
}
