import 'package:books_test_app/Features/splash/presentation/views/splash_view.dart';
import 'package:books_test_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async {
  await Hive.initFlutter();
 await Hive.openBox(boxName);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.light,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      home: const SplashView(),
    );
  }
}
