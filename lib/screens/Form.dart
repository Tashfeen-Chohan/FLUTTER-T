import 'package:coding_with_t/common/appbar.dart';
import 'package:coding_with_t/common/drawer.dart';
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
      drawer: const MyDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(children: [
            TextFormField(
              controller: productNameController,
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
                    title: Text(ProductType.deliverable.name),
                    value: ProductType.deliverable,
                    groupValue: _selectedType,
                    dense: true,
                    contentPadding: const EdgeInsets.all(0),
                    tileColor: Colors.deepPurple.shade100,
                    shape: BeveledRectangleBorder(
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
                    title: Text(ProductType.downloadable.name),
                    value: ProductType.downloadable,
                    groupValue: _selectedType,
                    dense: true,
                    contentPadding: const EdgeInsets.all(0),
                    tileColor: Colors.deepPurple.shade100,
                    shape: BeveledRectangleBorder(
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
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => changeScreen(context, productNameController.text,
                  productDescController.text, topProduct),
              child: const Text("Add Product"),
            ),
          ]),
        ),
      ),
    );
  }

  void changeScreen(
      BuildContext context, String prodName, String prodDesc, bool topProduct) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailsScreen(
        productName: prodName,
        productDescription: prodDesc,
        topProduct: topProduct,
      );
    }));
    productNameController.text = "";
    productDescController.text = "";
  }
}
