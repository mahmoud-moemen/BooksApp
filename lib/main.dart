import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Features/splash/presentation/views/splash_view.dart';
import 'constants.dart';

void main() {
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      themeMode: ThemeMode.light,
      home: SplashView(),
    );
  }
}
