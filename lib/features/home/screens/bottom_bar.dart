import 'package:flutter/material.dart';
import 'package:deen_in_beria/constants/global_variables.dart';
import 'package:deen_in_beria/features/home/screens/song_screen.dart';
import 'package:deen_in_beria/features/home/screens/main_home_screen.dart';
import 'package:deen_in_beria/features/home/widgets/custom_bottom_nav_bar.dart';

class BottomBarHomeScreen extends StatefulWidget {
  static const String routeName = 'bottom-navigation';
  const BottomBarHomeScreen({super.key});

  @override
  State<BottomBarHomeScreen> createState() => _BottomBarHomeScreenState();
}

class _BottomBarHomeScreenState extends State<BottomBarHomeScreen> {
  int _page = 0;
  List<Widget> pages = [
    const MainHomeScreen(),
    const SongScreen(),
    const Text("This is librairie"),
    const Text("This is profile"),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: GlobalVariables.mainGradientColor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar:
            CustomNavigationBar(updatePage: updatePage, page: _page),
        body: Center(child: pages[_page]),
      ),
    );
  }
}
