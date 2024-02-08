import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:deen_in_beria/router.dart';
import 'package:deen_in_beria/constants/global_variables.dart';
import 'package:deen_in_beria/features/auth/screens/home_page.dart';
import 'package:deen_in_beria/features/home/screens/bottom_bar.dart';
import 'package:deen_in_beria/features/auth/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kutbah en Beria',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
        colorScheme: const ColorScheme.light(primary: Colors.transparent),
        appBarTheme: const AppBarTheme(
            elevation: 0, iconTheme: IconThemeData(color: Colors.white)),
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const BottomBarHomeScreen(),
    );
  }
}
