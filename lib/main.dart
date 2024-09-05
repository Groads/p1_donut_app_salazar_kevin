import 'package:flutter/material.dart';
import 'package:p1_donut_app_salazar_kevin/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      );
  }
}
