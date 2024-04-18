import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column & Row"),
        backgroundColor: Colors.amber,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Icon(
                  Icons.phone_android,
                  size: 100,
                ),
              ),
              Expanded(
                flex: 3,
                child: Icon(
                  Icons.phone_iphone_outlined,
                  size: 100,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.phone_android_outlined,
                  size: 100,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star_border),
              Icon(Icons.star_border),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [Icon(Icons.phone), Text("Phone")],
              ),
              Column(
                children: [Icon(Icons.message), Text("Message")],
              ),
              Column(
                children: [Icon(Icons.share), Text("Share")],
              )
            ],
          )
        ],
      ),
    );
  }
}
