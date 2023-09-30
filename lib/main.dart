import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_learning_app/UI/Login/Screen/login_screen.dart';
import 'package:hd_learning_app/UI/SplashScreen/Screen/splahs_creen.dart';
import 'package:hd_learning_app/ui/MainMenu/Screen/main_menu.dart';

void main(List<String> args) {
  runApp(HDLearningApp());
}

class HDLearningApp extends StatelessWidget {
  const HDLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HD Learning App',
      home: SplashScreen(),
    );
  }
}
