import 'package:flutter/material.dart';

class view extends StatelessWidget {
  const view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const ListTile(
              leading: Icon(Icons.settings),
            );
          }
        ),
      ),
    );
  }
}


