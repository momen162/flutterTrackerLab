import 'package:flutter/material.dart';

class Problem_2 extends StatefulWidget {
  const Problem_2({super.key});

  @override
  State<Problem_2> createState() => _Problem_2State();
}

class _Problem_2State extends State<Problem_2> {
  String displayText = 'Press the Button';

  void _changeText() {
    setState(() {
      displayText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Problem_2')),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayText,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
                fontFamily: 'DMSans-Regular',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeText,
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
