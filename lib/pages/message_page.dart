import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[200],
      child: Center(
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue[400],
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              print("點到了藍色卡片！");
              SystemSound.play(SystemSoundType.click);
            },
            child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Icon(Icons.message, color: Colors.white, size: 64),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
