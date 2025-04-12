import 'package:flutter/material.dart';

class Problem_1 extends StatelessWidget {
  const Problem_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Problem_1')),
        backgroundColor: Colors.yellow,
      ),
      body: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            fontFamily: 'DMSans-Regular',
          ),
        ),
      ),
    );
  }
}
