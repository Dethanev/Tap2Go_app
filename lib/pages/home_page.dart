import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[200],
      child: Center(
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepPurple[400],
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              print("點到了紫色卡片！");
            },
            child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Icon(Icons.home, color: Colors.white, size: 64),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
