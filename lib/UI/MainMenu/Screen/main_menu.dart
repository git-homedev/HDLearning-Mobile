import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hd_learning_app/UI/Home/Screen/home_screen.dart';
import 'package:hd_learning_app/UI/Learning/Screen/learning_screen.dart';
import 'package:hd_learning_app/UI/MainMenu/Controller/main_menu_controller.dart';
import 'package:hd_learning_app/UI/Profile/Screen/profile_screen.dart';

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
          backgroundColor: Color(0xff0F75BD),
          unselectedItemColor: Color(0xff032258),
          selectedItemColor: Color(0xffffffff),
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
