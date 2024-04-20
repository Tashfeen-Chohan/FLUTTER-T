import 'package:coding_with_t/common/appbar.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: "Rows & Columns",
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
        trailingIcon: Icons.display_settings_rounded,
      ),
      body: Column(
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
