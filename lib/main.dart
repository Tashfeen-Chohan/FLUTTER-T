// ignore_for_file: unused_import

import 'package:coding_with_t/screens/Form.dart';
import 'package:coding_with_t/screens/container.dart';
import 'package:coding_with_t/screens/custom_widget.dart';
import 'package:coding_with_t/screens/dashboard.dart';
import 'package:coding_with_t/screens/home_screen.dart';
import 'package:coding_with_t/screens/layout.dart';
import 'package:coding_with_t/screens/listview.dart';
import 'package:coding_with_t/screens/statefull_widget.dart';
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
      home: HomeScreen(),
      // home: Dashboard(),
      // home: ContainerScreen(),
      // home: LayoutScreen(),
      // home: ListViewScreen(),
      // home: CustomWidget(),
      // home: StatefullWidget(),
      // home: FormScreen(),
    );
  }
}
