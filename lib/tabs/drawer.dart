import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,

      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Ethan"),
                  accountEmail: Text("ethan.dev@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/icon/Ethan.jpg"),
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/icon/car.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {
                  SystemSound.play(SystemSoundType.click);
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
                  SystemSound.play(SystemSoundType.click);
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
                  SystemSound.play(SystemSoundType.click);
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
                  SystemSound.play(SystemSoundType.click);
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
                  SystemSound.play(SystemSoundType.click);
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
                  SystemSound.play(SystemSoundType.click);
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
