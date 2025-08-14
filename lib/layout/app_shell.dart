import 'package:flutter/material.dart';
import 'package:tap2go_app/layout/bottom_nav_bar.dart';
import '../data/story/story_widget.dart';
import '../utils/sound.dart';
import 'app_bar.dart';
import 'app_drawer.dart';
import '../pages/home_page.dart';
import '../pages/user_page.dart';
import '../pages/message_page.dart';
import '../pages/category_page.dart';
import '../pages/setting_page.dart';

// 主頁面組件
class AppShell extends StatefulWidget {
  const AppShell({super.key});
  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _currentIndex = 0;  // 當前選中的頁面索引
  final _pageController = PageController(); // 用於控制頁面切換的控制器

  // 每個頁面對應一種顏色，這些顏色將用於 AppBar 的背景色
  final _appBarColors = <Color>[
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.blue,
    Colors.pinkAccent,
    Colors.green,
  ];
  // 每個頁面對應的 Widget 列表
  final _pages = const <Widget>[
    Home(),
    User(),
    Message(),
    Category(),
    Setting(),
  ];

    // 當頁面改變時，播放頁面切換音效
  void _onPageChanged(int index) {
    setState(() => _currentIndex = index);
    Sound.click2();
  }
  // 當底部導航欄被點擊時，切換到對應的頁面
  Future<void> _onNavTap(int index) async {
    if (index == _currentIndex) return;    // 同一頁就不重複動畫
    Sound.click1();
    await _pageController.animateToPage( // 使用 PageController 進行頁面切換動畫
      index,
      duration: const Duration(milliseconds: 300), // 動畫持續時間
      curve: Curves.easeInOut, // 動畫曲線
    );
  }

  @override
  // 釋放 PageController 資源
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  // 構建主頁面 UI
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(backgroundColor: _appBarColors[_currentIndex]), // 使用當前頁面的顏色
      drawer: const MyDrawer(), // 左側抽屜菜單
      endDrawer: const Drawer(child: StoryPage()), // 右側抽屜菜單（故事頁面）
      // 滑動頁面內容（主內容）
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
      //控制底部導覽欄與頁面切換
      bottomNavigationBar: MyBottomNavigationBar(
        currentIndex: _currentIndex, // 當前選中的索引
        onTap: _onNavTap, // 點擊導航欄時的回調函數
      ),
    );
  }
}
