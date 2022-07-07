import 'package:flutter/material.dart';
import 'Routes.dart';

class Todos {

  const Todos(this.title);
  final String title;

}

// void main(List<String> args) {
//   runApp(
//     MaterialApp(
//       initialRoute: '/',
//       routes: Routes.generate(),
//     )
//   );
// }

class ContainerLesson extends StatelessWidget {
  const ContainerLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Navigator.pop(context);},
              child: const Text("Click here"),
            ),
          )
        ],
      ),
    );
  }
}
