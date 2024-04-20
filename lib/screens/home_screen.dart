import 'package:coding_with_t/common/drawer.dart';
import 'package:coding_with_t/screens/Form.dart';
import 'package:coding_with_t/screens/container.dart';
import 'package:coding_with_t/screens/custom_widget.dart';
import 'package:coding_with_t/screens/dashboard.dart';
import 'package:coding_with_t/screens/layout.dart';
import 'package:coding_with_t/screens/listview.dart';
import 'package:coding_with_t/screens/statefull_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text(
          "Home Screen",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          // Icon(Icons.search),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => switchScreen(context, "FormScreen"),
                    child: const Text("Form"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => switchScreen(context, "DashboardScreen"),
                    child: const Text("Dashboard"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => switchScreen(context, "ContainerScreen"),
                    child: const Text("Container"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => switchScreen(context, "LayoutScreen"),
                    child: const Text("Layout"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => switchScreen(context, "ListViewScreen"),
                    child: const Text("ListView"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () =>
                        switchScreen(context, "CustomWidgetScreen"),
                    child: const Text("Custom Widget"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () =>
                        switchScreen(context, "StatefullWidgetScreen"),
                    child: const Text("Statefull Widget"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
          height: 70,
          color: Colors.deepPurple,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_cart, color: Colors.white),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.favorite, color: Colors.white),
                  Text(
                    "Fav",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.settings, color: Colors.white),
                  Text(
                    "Settings",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

void switchScreen(BuildContext context, String screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    if (screen == "FormScreen") {
      return const FormScreen();
    } else if (screen == "DashboardScreen") {
      return const Dashboard();
    } else if (screen == "ContainerScreen") {
      return const ContainerScreen();
    } else if (screen == "LayoutScreen") {
      return const LayoutScreen();
    } else if (screen == "ListViewScreen") {
      return ListViewScreen();
    } else if (screen == "CustomWidgetScreen") {
      return const CustomWidget();
    } else if (screen == "StatefullWidgetScreen") {
      return const StatefullWidget();
    } else {
      return const HomeScreen();
    }
  }));
}
