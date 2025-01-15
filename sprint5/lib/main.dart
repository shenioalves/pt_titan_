import 'package:flutter/material.dart';
import 'package:sprint5/data/task_inherited.dart';
import 'package:sprint5/screens/form_screen.dart';
import 'screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TaskInherited(child: const InitialScreen()),
    );
  }
}

