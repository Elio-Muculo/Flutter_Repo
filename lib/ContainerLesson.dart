// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

class ContainerLesson extends StatelessWidget {
  const ContainerLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Halla MAdrid"),
          // actions: [IconButton(onPressed: Navigator.pop(context), icon: const Icon(Icons.arrow_back))],
        ),
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.white, style: BorderStyle.solid, width: 4.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("HALLA MADRID"),
                Container(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: const Text("COMO NO TE VOY A QUERER?")),
                const Text("14 CHAMPIONS LEAGUE"),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Click here"),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
