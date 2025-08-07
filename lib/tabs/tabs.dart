import 'package:flutter/material.dart';
import 'myappbar.dart';
import '../pages/home_page.dart';
import '../pages/user_page.dart';
import '../pages/message_page.dart';
import '../pages/category_page.dart';
import '../pages/setting_page.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  final PageController _pageController = PageController();
  final List<Color> _appBarColors = [
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.blue,
    Colors.pink[400]!,
    Colors.green,
  ];

  final List<Widget> _pages = const [
    HomePage(),
    User(),
    Message(),
    Category(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(backgroundColor: _appBarColors[_currentIndex]),

      /// 🔄 PageView + 底部切頁連動動畫
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),

      /// 🚀 shifting 動畫 + 背景顏色變換
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "主頁",
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "用戶",
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "訊息",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "分類",
            backgroundColor: Colors.pink.shade400,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "設定",
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
