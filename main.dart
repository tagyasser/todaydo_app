import 'package:flutter/material.dart';
import 'package:todaydo_app/screens/login_screen.dart';

import 'screens/tasks_screen.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskScreen(),
    );
  }
}
