import 'package:coding_with_t/common/appbar.dart';
import 'package:coding_with_t/common/drawer.dart';
import 'package:coding_with_t/screens/details.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Form"),
      drawer: const MyDrawer(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DetailsScreen();
              }));
            },
            child: const Text("Submit Form")),
      ),
    );
  }
}
