import 'package:coding_with_t/screens/container.dart';
import 'package:coding_with_t/screens/dashboard.dart';
import 'package:coding_with_t/screens/layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Coding With Tea",
      debugShowCheckedModeBanner: false,
      // home: Dashboard(),
      home: LayoutScreen(),
      // home: ContainerScreen(),
    );
  }
}
