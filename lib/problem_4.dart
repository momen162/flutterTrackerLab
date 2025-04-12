import 'package:flutter/material.dart';

class Problem_4 extends StatelessWidget {
  const Problem_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_4'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Large Bold Text',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Medium Italic Text',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Small Underlined Text',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Custom Font Text',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                fontFamily: 'DMSans-Regular',
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
