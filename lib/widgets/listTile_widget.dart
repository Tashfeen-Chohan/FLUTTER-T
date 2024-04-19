import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  // ListTileWidget({super.key});

  final String title, subTitle;
  final IconData leadingIcon, trailingIcon;
  final Color? iconColor, listTileColor;

  const ListTileWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.shopping_cart,
    this.iconColor = Colors.black,
    this.listTileColor = Colors.amberAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: iconColor,
          size: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(subTitle),
        trailing: Icon(trailingIcon),
        tileColor: listTileColor,
      ),
    );
  }
}
