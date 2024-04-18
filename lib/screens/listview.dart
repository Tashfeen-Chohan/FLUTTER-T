import 'package:coding_with_t/common/drawer.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  List<String> products = ["Bed", "Sofa", "Chair", "Table"];
  List<String> productDetails = [
    "King size bed",
    "Comfortable sofa",
    "Gaming chair",
    "A dining table"
  ];
  List<int> price = [2500, 2000, 1500, 1200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LISTVIEW"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(child: Text(products[index][0])),
                  title: Text(products[index]),
                  subtitle: Text(productDetails[index]),
                  trailing: Text(
                    "\$${price[index]}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.amberAccent,
                ),
              );
            }),
      ),
    );
  }
}
