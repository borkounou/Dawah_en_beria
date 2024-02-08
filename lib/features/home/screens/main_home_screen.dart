import 'package:flutter/material.dart';
import 'package:deen_in_beria/constants/global_variables.dart';
import 'package:deen_in_beria/features/home/screens/home_screen.dart';

class MainHomeScreen extends StatefulWidget {
  static const String routeName = '/main-home-page';
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: GlobalVariables.mainGradientColor),
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: HomeScreen(),
        ),
      ),
    );
  }
}
