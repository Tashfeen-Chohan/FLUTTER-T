import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {super.key,
      required this.productName,
      required this.productDescription,
      required this.topProduct});

  final String productName, productDescription;
  final bool topProduct;

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
        title: Text(productName),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: topProduct
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_outline),
            title: Text(productName),
            subtitle: Text(productDescription),
            trailing: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
