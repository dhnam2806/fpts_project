import 'package:flutter/material.dart';
import 'package:fpts_product/ui/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Method',
      home: MainScreen(),
    );
  }
}
