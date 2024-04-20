// ignore_for_file: unused_import

import 'package:coding_with_t/common/appbar.dart';
import 'package:coding_with_t/common/drawer.dart';
import 'package:coding_with_t/models/product_model.dart';
import 'package:coding_with_t/screens/details.dart';
import 'package:flutter/material.dart';

enum ProductType { deliverable, downloadable }

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productDescController = TextEditingController();
  bool topProduct = false;
  ProductType _selectedType = ProductType.deliverable;
  List<String> productSizes = ["Small", "Medium", "Large", "XL", "XXL"];
  String _selectedSize = "Small";
  final _formKey = GlobalKey<FormState>();
  ProductModel productModel = ProductModel();

  @override
  void dispose() {
    // TODO: implement dispose
    productNameController.dispose();
    productDescController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "Form"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: productNameController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter product name!";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: "Please enter product name",
                        labelText: "Product Name",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.verified_user_outlined)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: productDescController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter product description!";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: "Please enter product description",
                        labelText: "Product Description",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.verified_user_outlined)),
                  ),
                  CheckboxListTile(
                      contentPadding: const EdgeInsets.all(0),
                      title: const Text("Top Product"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: topProduct,
                      onChanged: (val) {
                        setState(() {
                          topProduct = val!;
                        });
                      }),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<ProductType>(
                          title: const Text("Deliverable"),
                          value: ProductType.deliverable,
                          groupValue: _selectedType,
                          dense: true,
                          contentPadding: const EdgeInsets.all(0),
                          tileColor: Colors.deepPurple.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onChanged: (val) {
                            setState(() {
                              _selectedType = val!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: RadioListTile<ProductType>(
                          title: const Text("Downloadable"),
                          value: ProductType.downloadable,
                          groupValue: _selectedType,
                          dense: true,
                          contentPadding: const EdgeInsets.all(0),
                          tileColor: Colors.deepPurple.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          onChanged: (val) {
                            setState(() {
                              _selectedType = val!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButtonFormField(
                      icon: const Icon(
                        Icons.arrow_drop_down_circle_rounded,
                        color: Colors.deepPurple,
                      ),
                      value: _selectedSize,
                      dropdownColor: Colors.deepPurple.shade200,
                      decoration: const InputDecoration(
                        labelText: "Product Sizes",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.accessibility_new_outlined,
                          color: Colors.deepPurple,
                        ),
                      ),
                      items: productSizes
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedSize = val!;
                        });
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () => changeScreen(
                      context,
                      productNameController.text,
                      productDescController.text,
                      topProduct,
                      // _selectedType,
                      _selectedSize,
                    ),
                    child: const Text(
                      "Add Product",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void changeScreen(BuildContext context, String prodName, String prodDesc,
      bool topProduct, String productSize) {
    if (_formKey.currentState!.validate()) {
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(
      //     content: Text("Data Processing!"),
      //   ),
      // );

      productModel.productName = prodName;
      productModel.productDesc = prodDesc;
      productModel.isTopProduct = topProduct;
      // productModel.productType = productType;
      productModel.productSize = productSize;

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return DetailsScreen(productModel: productModel);
      }));
    }
    productNameController.text = "";
    productDescController.text = "";
  }
}
