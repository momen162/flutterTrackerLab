import 'package:flutter/material.dart';

class Problem_16 extends StatefulWidget {
  const Problem_16({super.key});

  @override
  State<Problem_16> createState() => _Problem_16State();
}

class _Problem_16State extends State<Problem_16> {
  bool isChanged = false;

  void _changeContainer() {
    setState(() {
      isChanged = !isChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem_16'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: isChanged ? 200 : 100,
          height: isChanged ? 200 : 100,
          decoration: BoxDecoration(
            color: isChanged ? Colors.orange : Colors.blue,
            borderRadius: BorderRadius.circular(isChanged ? 30 : 0),
          ),
          curve: Curves.easeInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeContainer,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
