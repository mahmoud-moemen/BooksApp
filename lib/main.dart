import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'Features/splash/presentation/views/splash_view.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/app_router.dart';

void main() {
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      themeMode: ThemeMode.light,
      routerConfig: AppRouter.router,

    );
  }
}

