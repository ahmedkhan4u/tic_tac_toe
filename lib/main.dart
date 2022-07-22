import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tic_tac_toe/bindings/home_binding.dart';
import 'package:tic_tac_toe/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      initialRoute: Routes.getInitialRoute(),
      getPages: Routes.routes,
    );
  }
}
