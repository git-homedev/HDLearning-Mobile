import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_learning_app/common/app_theme.dart';
import 'package:hd_learning_app/ui/Home/Screen/home_screen.dart';
import 'package:hd_learning_app/ui/Learning/Screen/learning_screen.dart';
import 'package:hd_learning_app/ui/MainMenu/Controller/main_menu_controller.dart';
import 'package:hd_learning_app/ui/Profile/Screen/profile_screen.dart';

class MainMenu extends StatelessWidget {
  final controller = Get.put(MainMenuController());

  final List<Widget> screen = [
    HomeScreen(),
    LearningScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screen[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: AppTheme.primaryColor_500,
          unselectedItemColor: AppTheme.primaryColor_900,
          selectedItemColor: AppTheme.whiteColor,
          iconSize: 28,
          currentIndex: controller.selectedIndex.value,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => controller.selectedIndex.value = index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
