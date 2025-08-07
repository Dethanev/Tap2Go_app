# 📱 homePage_app

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
├── main.dart # App 入口點
├── tabs/ # 公用元件（如 AppBar、Tabs）
│ ├── myappbar.dart # 自訂 AppBar 樣式
│ └── tabs.dart # BottomNavigationBar 控制邏輯
├── pages/ # 每個分頁畫面
│ ├── home_page.dart     #紫色
│ ├── message_page.dart  #藍色
│ ├── category_page.dart #粉色
│ ├── user_page.dart     #橘色
│ └── setting_page.dart  #綠色
```