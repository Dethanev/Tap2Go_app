# 📱 Tap2GO_app

一個用 Flutter 開發的首頁介面 Demo，包含：

- 多頁面切換（`BottomNavigationBar` + `PageView`）
- 自訂AppBar動態變色 和 自訂bBottomNavigationBar動態變色 跟隨頁面變化
- 使用 Material 風格設計

---

## 🛠 技術棧

| 技術         | 說明                    |
|--------------|------------------------|
| Flutter      | UI 框架                |
| Dart         | 開發語言                |
| GitHub       | 原始碼版本控制與託管     |

---

## 📁 資料夾結構簡介
```
lib/
├── main.dart                # App 入口點
│
├── data/                    # 資料層
│   └── story/                 # 圖書館資料
│       ├── story_data.dart    # 圖書館資料
│       └── story_widget.dart  # 自訂 story 樣式
│
├── layout/                # 公用元件（App 外殼組件）
│   ├── app_bar.dart         # 自訂 AppBar 樣式
│   ├── app_drawer.dart      # 自訂 Drawer 樣式
│   ├── app_shell.dart       # 控制邏輯（PageView、BottomNavigationBar等）
│   └── bottom_nav_bar.dart  # 自訂 BottomNavigationBar 樣式
│
├── pages/                  # 每個分頁畫面
│   ├── home_page.dart         # 首頁頁面
│   ├── user_page.dart         # 客服頁面
│   ├── message_page.dart      # 訊息頁面
│   ├── category_page.dart     # 分類頁面
│   └── setting_page.dart      # 系統設定頁面
│
└── utils/                 # 🛠️ 通用工具設定
    └── sound.dart         # 聲音設定（音效）
```