import 'package:flutter/material.dart';
import 'package:its_tech_app/screen/main_screen/screen/main_screen.dart';

MaterialApp main() {
  return const MaterialApp(
    home: MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SafeArea(child: MainScreen(),),);
  }
}

