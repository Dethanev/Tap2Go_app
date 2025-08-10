import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange[200],
      child: Center(
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepOrange[400],
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              print("點到了橘色卡片！");
              SystemSound.play(SystemSoundType.click);
            },
            child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Icon(Icons.person, color: Colors.white, size: 64),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
