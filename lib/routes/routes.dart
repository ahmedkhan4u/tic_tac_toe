import 'package:get/get.dart';
import 'package:tic_tac_toe/screens/home_screen.dart';

class Routes {
  static const String _initalRoute = "/";
  static String getInitialRoute() => _initalRoute;
  static List<GetPage> routes = [
    GetPage(name: _initalRoute, page: () => HomeScreen())
  ];
}
