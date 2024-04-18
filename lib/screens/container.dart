import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CONTAINER",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.amberAccent,
                    border: Border.all(color: Colors.red, width: 5),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.orangeAccent,
                          blurRadius: 5,
                          spreadRadius: 5),
                    ]),
                child: const Text(
                  "Less Booring",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.cyanAccent,
                    elevation: 20,
                    shadowColor: Colors.black),
                onPressed: () {},
                child: const Text("Let's Begin")),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket_outlined),
              label: const Text("Let's Shopping"),
            )
          ],
        ),
      ),
    );
  }
}
