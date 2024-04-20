import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor, foregroundColor;
  final IconData leadingIcon, trailingIcon;

  const MyAppBar({
    super.key,
    required this.title,
    this.backgroundColor = Colors.deepPurple,
    this.foregroundColor = Colors.white,
    this.leadingIcon = Icons.arrow_back_outlined, 
    this.trailingIcon = Icons.shopping_cart,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(leadingIcon),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(trailingIcon))],
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
