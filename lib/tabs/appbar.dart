import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  const MyAppBar({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text("My App Bar", style: TextStyle(color: Colors.white)),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
