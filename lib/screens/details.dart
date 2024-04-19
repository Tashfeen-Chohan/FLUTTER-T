import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key, required this.productName, required this.productDescription});

  final String productName, productDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Details"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.production_quantity_limits),
            title: Text(productName),
            subtitle: Text(productDescription),
          ),
        ],
      ),
    );
  }
}
