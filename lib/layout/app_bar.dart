import 'package:flutter/material.dart';
import 'package:tap2go_app/utils/sound.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;  // 定義背景顏色屬性
  const MyAppBar({super.key, required this.backgroundColor}); // 接收背景顏色作為參數

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),  // 設置圖標顏色
      title: Text("My App Bar", style: TextStyle(color: Colors.white)), // 設置標題文字顏色
      elevation: 0, // 去除陰影
      // 使用 Builder 來獲取 Scaffold 的上下文，從而打開 Drawer
      leading: Builder(
        builder:
            (context) => (IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Sound.click2(); // 點擊左側按鈕時播放音效
                Scaffold.of(context).openDrawer();  // 打開左側抽屜菜單
              },
            )),
      ),
      // 在 AppBar 右側添加一個按鈕，點擊後打開右側抽屜菜單
      actions: [
        IconButton(
          icon: Icon(Icons.bookmark),
          onPressed: () {
            Sound.click2(); // 點擊右側按鈕時播放音效
            Scaffold.of(context).openEndDrawer(); // 打開右側抽屜菜單
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);  // 設置 AppBar 的高度
}
