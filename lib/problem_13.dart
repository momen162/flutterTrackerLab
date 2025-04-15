import 'package:flutter/material.dart';

class Problem_13 extends StatelessWidget {
  const Problem_13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 32,
              width: 32,
            ),
            const SizedBox(width: 10),
            const Text(
              'Problem_13',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add search functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Add menu options here
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Custom AppBar Example',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
