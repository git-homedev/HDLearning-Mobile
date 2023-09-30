import 'package:get/get.dart';
import 'package:hd_learning_app/UI/Login/Screen/login_screen.dart';
import 'package:hd_learning_app/UI/MainMenu/Screen/main_menu.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(
      Duration(seconds: 3),
      (() {
        Get.off(LoginPage());
      }),
    );
  }
}
