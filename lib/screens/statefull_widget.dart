import 'package:coding_with_t/common/appbar.dart';
import 'package:coding_with_t/common/drawer.dart';
import 'package:flutter/material.dart';

class StatefullWidget extends StatefulWidget {
  const StatefullWidget({super.key});

  @override
  State<StatefullWidget> createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Statefull Widget"),
      drawer: const MyDrawer(),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                tileColor: Colors.cyan,
                title: const Text("Nike Shoes"),
                trailing: IconButton(
                  icon: liked
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(Icons.favorite_outline),
                  onPressed: () {
                    liked = !liked;
                    setState(() {});
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
