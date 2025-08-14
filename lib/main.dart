import 'package:flutter/material.dart';
import 'layout/app_shell.dart';
void main() => runApp(Tap2GoApp());

class Tap2GoApp extends StatelessWidget {
  const Tap2GoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: AppShell());
  }
}
