import 'package:flutter/material.dart';
import 'package:hd_learning_app/UI/MainMenu/Screen/main_menu.dart';

void main(List<String> args) {
  runApp(HDLearningApp());
}

class HDLearningApp extends StatelessWidget {
  const HDLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HD Learning App',
      home: MainMenu(),
    );
  }
}
