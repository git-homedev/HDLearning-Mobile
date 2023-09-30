import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = ''.obs;
  final password = ''.obs;
  final liatpassword = false.obs;

  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    } else if (!GetUtils.isEmail(value)) {
      return 'Email tidak valid';
    }
    return null; // Email valid.
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password tidak boleh kosong';
    } else if (value.length < 6) {
      return 'Password harus memiliki setidaknya 6 karakter';
    }
    return null; // Password valid.
  }
}
