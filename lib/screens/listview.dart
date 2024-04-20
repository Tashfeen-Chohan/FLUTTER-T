import 'package:coding_with_t/common/appbar.dart';
import 'package:coding_with_t/common/drawer.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  final List<String> products = ["Bed", "Sofa", "Chair", "Table", "Laptop"];
  final List<String> productDetails = [
    "King size bed",
    "Comfortable sofa",
    "Gaming chair",
    "A dining table",
    "Hp 840 G5"
  ];
  final List<int> price = [2500, 2000, 1500, 1200, 7500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "ListView",
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        trailingIcon: Icons.list_alt_outlined,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: const BottomAppBar(
          color: Colors.amber,
          notchMargin: 8,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [Icon(Icons.home), Text("Home")],
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [Icon(Icons.shopping_cart), Text("Shop")],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Column(
                  children: [Icon(Icons.favorite), Text("Fav")],
                ),
              ),
              Column(
                children: [Icon(Icons.settings), Text("Settings")],
              ),
            ],
          )),
    );
  }
}
