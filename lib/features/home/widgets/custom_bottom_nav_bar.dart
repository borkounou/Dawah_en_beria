import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:deen_in_beria/constants/global_variables.dart';

class CustomNavigationBar extends StatelessWidget {
  final void Function(int) updatePage;
  final int page;
  const CustomNavigationBar(
      {super.key, required this.updatePage, required this.page});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: updatePage,
      currentIndex: page,
      type: BottomNavigationBarType.fixed,
      backgroundColor: GlobalVariables.backgroundColor,
      unselectedItemColor: GlobalVariables.selectedNavbarColor,
      selectedItemColor: GlobalVariables.unselectedNavbarColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_library_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_library_filled),
          label: 'Librairies',
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: 'Profile',
        ),
      ],
    );
  }
}
