import 'package:flutter/material.dart';

class Problem_11 extends StatelessWidget {
  const Problem_11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_11'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
