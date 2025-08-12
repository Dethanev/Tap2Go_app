import 'package:flutter/material.dart';
import 'package:tab2go_app/utils/sound.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[200],
      child: Center(
        child: Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(30),
          color: Colors.green,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              print("點到了綠色卡片！");
              Sound.fart5();
            },
            child: SizedBox(
              width: 300,
              height: 300,
              child: Center(
                child: Icon(Icons.settings, color: Colors.white, size: 64),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
