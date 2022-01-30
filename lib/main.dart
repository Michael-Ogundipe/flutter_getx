import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/first_screen.dart';
import 'package:flutter_getx/screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      getPages: [
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/first/:someValue', page: () => const FirstScreen())
      ],
    );
  }
}

