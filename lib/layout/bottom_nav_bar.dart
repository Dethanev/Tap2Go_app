import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex; // 當前選中的索引
  final ValueChanged<int> onTap; // 點擊導航欄時的回調函數
  
  const MyBottomNavigationBar({super.key,required this.currentIndex, required this.onTap});  // 接收當前索引和點擊回調
  
  // 用於控制底部導航欄的顯示和交互
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.shifting, // 使用變化式底部導航欄
        currentIndex: currentIndex,  // 當前選中的索引
        selectedItemColor: Colors.black,  // 選中項目的顏色
        unselectedItemColor: Colors.white,  // 未選中項目的顏色
        onTap: onTap, // 點擊導航欄時的回調函數
        // 底部導航欄的項目列表
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),     label: '主頁',  backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),   label: '用戶',  backgroundColor: Colors.deepOrange),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),  label: '訊息',  backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.category), label: '分類',  backgroundColor: Colors.pinkAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: '設定',  backgroundColor: Colors.green),
        ],
      );
  }
}