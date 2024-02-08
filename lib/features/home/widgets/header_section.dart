import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  final String title;
  final String action;

  const HeaderSection(
      {super.key, required this.title, this.action = 'View more'});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text("Header")],
    );
  }
}
