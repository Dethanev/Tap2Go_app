import 'package:flutter/material.dart';
import 'package:tap2go_app/data/story/story.dart';
import 'package:tap2go_app/taps/drawer.dart';
import 'package:tap2go_app/utils/sound.dart';
import 'appbar.dart';
import '../pages/home_page.dart';
import '../pages/user_page.dart';
import '../pages/message_page.dart';
import '../pages/category_page.dart';
import '../pages/setting_page.dart';

class Taps extends StatefulWidget {
  const Taps({super.key});
  @override
  State<Taps> createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  int _currentIndex = 0;
  final _pageController = PageController();

  final _appBarColors = <Color>[
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.blue,
    Colors.pinkAccent,
    Colors.green,
  ];

  final _pages = const <Widget>[
    Home(),
    User(),
    Message(),
    Category(),
    Setting(),
  ];

  void _onPageChanged(int index) {
    setState(() => _currentIndex = index); // 統一只在這裡更新狀態
    Sound.click2();                        // 滑動/切頁完成時的音效
  }

  Future<void> _onNavTap(int index) async {
    if (index == _currentIndex) return;    // 同一頁就不重複動畫
    Sound.click1();                        // 點底欄的音效
    await _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(backgroundColor: _appBarColors[_currentIndex]),
      drawer: const MyDrawer(),
      endDrawer: const Drawer(child: StoryPage()),

      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _onNavTap,
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
      ),
    );
  }
}
