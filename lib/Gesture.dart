import 'package:flutter/material.dart';

class Handle extends StatefulWidget {
  Handle({Key? key}) : super(key: key);

  @override
  State<Handle> createState() => _HandleState();
}

class _HandleState extends State<Handle> {
  bool _active = false;
  
  void _changeColor() {
    setState(() => _active ? _active = false : _active = true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _changeColor,
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: _active ? Colors.amber : Colors.black87,
          ),
        ),
      ),
    );
  }
}
