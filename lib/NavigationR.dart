import 'package:Login/ContainerLesson.dart';
import 'package:Login/NavigatorRoutes.dart';
import 'package:flutter/material.dart';

import 'Routes.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Todos data = ModalRoute.of(context)?.settings.arguments as Todos;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("CULE"),
          Container(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: const Text("COMO NO TE VOY A QUERER?")),
              Text(data.title),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("voltar"),
            ),
          )
        ],
      ),
    );
  }
}
