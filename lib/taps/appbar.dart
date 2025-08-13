import 'package:flutter/material.dart';
import 'package:tap2go_app/utils/sound.dart';

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
      leading: Builder(
        builder:
            (context) => (IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Sound.click2();
                Scaffold.of(context).openDrawer();
              },
            )),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.bookmark),
          onPressed: () {
            Sound.click2();
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
