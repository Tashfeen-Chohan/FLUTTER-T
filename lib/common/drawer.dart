import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Text("Tashfeen Chohan"),
            accountEmail: Text("chohantashfeen@gmail.com"),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage("images/profile.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                foregroundImage: AssetImage("images/profile1.jpg"),
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text("Shop"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite_outline),
            title: const Text("Favourite"),
            onTap: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Labels"),
          ),
          ListTile(
            leading: const Icon(Icons.label_outline),
            title: const Text("Red"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.label_outline),
            title: const Text("Green"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.label_outline),
            title: const Text("Blue"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
