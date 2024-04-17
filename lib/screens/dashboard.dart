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
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
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
            IconButton(
                icon: const Icon(
                  Icons.account_balance_sharp,
                ),
                onPressed: () {},
                color: Colors.deepPurple,
                splashColor: Colors.orange),
          ],
        ),
      ),
    );
  }
}
