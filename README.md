# 📱 Tap2GO_app

一個用 Flutter 開發的首頁介面 Demo，包含：

- 多頁面切換（`BottomNavigationBar` + `PageView`）
- 自訂AppBar動態變色 和 自訂bBottomNavigationBar動態變色 跟隨頁面變化
- 使用 Material 風格設計

---

## 🛠 技術棧

| 技術         | 說明                    |
|--------------|------------------------|
| Flutter      | UI 框架                 |
| Dart         | 開發語言                |
| GitHub       | 原始碼版本控制與託管     |

---

## 📁 資料夾結構簡介
```
lib/
├── main.dart  App 入口點
├── tabs/            公用元件（如 AppBar、Tabs 、Drawer）
│ ├── myappbar.dart  自訂 AppBar 樣式
│ ├── drawer.dart    自訂 Drawer 樣式
│ ├── tabs.dart      BottomNavigationBar 控制邏輯
│ └── data/              放資料
│  └── story/            圖書館資料
│    ├── story.dart      自訂 story 樣式  
│    └──  listData.dart  圖書館資料
├──  pages/                每個分頁畫面
│  ├── home_page.dart      紫色頁面
│  ├── message_page.dart   藍色頁面
│  ├── category_page.dart  粉色頁面
│  ├── user_page.dart      橘色頁面
│  └── setting_page.dart   綠色頁面
└── utils/ 放設定
   └── sound.dart 聲音設定
```