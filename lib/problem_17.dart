import 'package:flutter/material.dart';

class Problem_17 extends StatefulWidget {
  const Problem_17({super.key});

  @override
  State<Problem_17> createState() => _Problem_17State();
}

class _Problem_17State extends State<Problem_17> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Problem_17: Settings'),
          backgroundColor: isDarkMode ? Colors.grey[900] : Colors.blue,
        ),
        body: ListView(
          children: [
            SwitchListTile(
              title: const Text('Dark Mode'),
              subtitle: const Text('Enable or disable dark mode'),
              value: isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  isDarkMode = value;
                });
              },
              secondary: const Icon(Icons.dark_mode),
            ),
          ],
        ),
      ),
    );
  }
}
