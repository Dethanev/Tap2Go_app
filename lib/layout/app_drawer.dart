import 'package:flutter/material.dart';
import 'package:tap2go_app/utils/sound.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      // 使用 Column 來排列 Drawer 中的項目
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: UserAccountsDrawerHeader(  // 使用者帳戶頭像和資訊
                  accountName: Text("Ethan"), // 使用者名稱
                  accountEmail: Text("ethan@gmail.com"),  // 使用者電子郵件
                  currentAccountPicture: CircleAvatar(  // 當前使用者頭像
                    backgroundImage: AssetImage("assets/icons/Ethan.png"),  // 頭像圖片
                  ),
                  decoration: BoxDecoration(  // 背景裝飾
                    image: DecorationImage(
                      fit: BoxFit.cover,  // 圖片填充方式
                      image: AssetImage("assets/icons/car.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // 使用 ListTile 來顯示 Drawer 中的選項
          ListTile( 
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {
                  Sound.click1();
                },
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
            ),
            title: Text("個人中心", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {
                  Sound.click1();
                },
                icon: Icon(Icons.message),
                color: Colors.white,
              ),
            ),
            title: Text("訊息中心", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {
                  Sound.click1();
                },
                icon: Icon(Icons.image),
                color: Colors.white,
              ),
            ),
            title: Text("相簿中心", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {
                  Sound.click1();
                },
                icon: Icon(Icons.wifi),
                color: Colors.white,
              ),
            ),
            title: Text("網路設置", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {
                  Sound.click1();
                },
                icon: Icon(Icons.map),
                color: Colors.white,
              ),
            ),
            title: Text("地圖設置", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {
                  Sound.click1();
                },
                icon: Icon(Icons.category),
                color: Colors.white,
              ),
            ),
            title: Text("分類設置", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
        ],
      ),
    );
  }
}
