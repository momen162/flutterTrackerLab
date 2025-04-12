import 'package:flutter/material.dart';
import 'problem_1.dart'; 
import 'problem_2.dart';
import 'problem_3.dart';
import 'problem_4.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //Problem_1(),
        //Problem_2(),
        //Problem_3(),
        Problem_4(),
    );
  }
}