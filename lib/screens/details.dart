import 'package:coding_with_t/common/appbar.dart';
import 'package:coding_with_t/models/product_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Details",
        foregroundColor: Colors.black,
        backgroundColor: Colors.amberAccent,
        trailingIcon: Icons.details,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            ListTile(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.deepPurple, width: 2)),
              leading: const Icon(
                Icons.shopify_rounded,
                size: 40,
              ),
              title: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    productModel.isTopProduct
                        ? const Chip(
                            backgroundColor: Colors.deepPurple,
                            label: Text(
                              "Top Product",
                              style: TextStyle(color: Colors.white),
                            ))
                        : const Text(""),
                    Text(
                      productModel.productName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(productModel.productDesc),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(productModel.productSize),
                        ),
                        // OutlinedButton(
                        //   onPressed: () {},
                        //   child: Text(productModel.productType as String),
                        // ),
                      ],
                    )
                  ]),
              trailing: const Icon(
                Icons.delete,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
