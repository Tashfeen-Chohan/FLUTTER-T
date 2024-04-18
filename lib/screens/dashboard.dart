import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    generateRandomNumber();
  }

  Random random = Random();
  int randomNumber = 0;

  void generateRandomNumber() {
    setState(() {
      randomNumber = random.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          "DASHBAORD",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(TextSpan(text: "Random value is : ", children: [
              TextSpan(
                  text: "$randomNumber",
                  style: const TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold))
            ])),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: generateRandomNumber,
                child: const Text("Generate Random Number")),
            // const Image(
            //   image: AssetImage("images/react.jpg"),
            // )
            const SizedBox(
              height: 10,
            ),

            // CONTAINER
          ],
        ),
      ),
    );
  }
}
