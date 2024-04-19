import 'package:coding_with_t/common/drawer.dart';
import 'package:coding_with_t/widgets/listtile_widget.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Custom Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      body: ListView(
        children: const [
          SizedBox(
            height: 50,
          ),
          ListTileWidget(
            title: "Mouse",
            subTitle: "A gaming mouse",
            leadingIcon: Icons.mouse,
          ),
          ListTileWidget(
            title: "Laptop",
            subTitle: "HP 840 G5",
            leadingIcon: Icons.laptop,
            listTileColor: Colors.blueAccent,
          ),
          ListTileWidget(
            title: "Mobile",
            subTitle: "Oppo A95",
            leadingIcon: Icons.phone_android,
            listTileColor: Colors.cyan,
          ),
          ListTileWidget(
            title: "Chair",
            subTitle: "A comfortable gaming chair",
            leadingIcon: Icons.chair_alt,
            listTileColor: Colors.lightBlue,
          ),
          ListTileWidget(
            title: "Table",
            subTitle: "A comfortable computer table",
            leadingIcon: Icons.table_restaurant_outlined,
            listTileColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
