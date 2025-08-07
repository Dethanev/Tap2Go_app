import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[200],
      child: Center(
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(30),
          color: Colors.pink[400],
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              print("點到了粉色卡片！");
            },
            child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Icon(Icons.category, color: Colors.white, size: 64),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
