import 'package:flutter/material.dart';

import 'Routes.dart';




class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, Routes.signIn);
                },
                child: const Text('Sign in'),
              ),
              SizedBox(height: 2.0,),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, Routes.signUp), 
                child: const Text('Sign up')
              )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pushNamed(context, Routes.deep, arguments: "ola ai");
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}