// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo/LayoutTest.dart';

import 'LayoutBuilderLesson.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // final floatButton = FloatingActionButton(
    //   onPressed: () {},
    //   backgroundColor: const Color.fromARGB(255, 129, 91, 184),
    //   child: const Icon(
    //     Icons.message,
    //     color: Colors.white,
    //   ),
    // );

    // final bottomMenu = BottomNavigationBar(
    //   fixedColor: Colors.white,
    //   backgroundColor: const Color.fromARGB(255, 129, 91, 184),
    //   items: const [
    //     BottomNavigationBarItem(
    //         label: 'Home',
    //         icon: Icon(Icons.home, color: Color.fromARGB(255, 255, 255, 255))),
    //     BottomNavigationBarItem(
    //         label: 'Phone',
    //         icon: Icon(Icons.phone, color: Color.fromARGB(255, 255, 255, 255))),
    //     BottomNavigationBarItem(
    //         label: 'Mail',
    //         icon: Icon(Icons.contact_mail,
    //             color: Color.fromARGB(255, 255, 255, 255)))
    //   ],
    // );

    // final hiddenMenu = Drawer(
    //       width: 260.0,
    //       child: Column(
    //         children: <Widget>[
    //           const UserAccountsDrawerHeader(
    //             decoration: BoxDecoration(
    //               color: Color.fromARGB(255, 129, 91, 184),
    //             ),
    //             accountName: Text("Elio Muculo"),
    //             accountEmail: Text("emuculo25@gmail.com"),
    //             currentAccountPicture: CircleAvatar(
    //                 // * backgroundPhotoHere
    //                 ),
    //           ),
    //           Flexible(
    //             child: ListTile(
    //               title: Text("Todas Mensagens"),
    //               leading: Icon(Icons.mail),
    //             ),
    //           ),
    //           Divider(
    //             height: 0.1,
    //           ),
    //           Flexible(
    //             child: ListTile(
    //               title: Text("Prioridades"),
    //               leading: Icon(Icons.inbox),
    //             ),
    //           ),
    //           Flexible(
    //             child: ListTile(
    //               title: Text("Social"),
    //               leading: Icon(Icons.people),
    //             ),
    //           ),
    //           Flexible(
    //             child: ListTile(
    //               title: Text("Promoções"),
    //               leading: Icon(Icons.local_offer),
    //             ),
    //           ),     
    //         ],
    //       ),
    //     );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 81, 20, 166)),
      home: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text('Elliot.Dev'),
        //   backgroundColor: const Color.fromARGB(255, 129, 91, 184),
        //   actions: const [
        //     Icon(Icons.more_vert, color: Colors.white),
        //   ],
        //   elevation: 2.0,
        // ),
        body: SafeArea(child: const LayoutTestOne()),
        // bottomNavigationBar: bottomMenu,
        // floatingActionButton: floatButton,
        // drawer: hiddenMenu,
      ),
    );
  }
}


