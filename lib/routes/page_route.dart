import 'package:get/get.dart';
import '../routes/route_name.dart';
import '../UI/Home/Screen/home_screen.dart';

class AppRoute {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomeScreen(),
    ),
  ];
}
