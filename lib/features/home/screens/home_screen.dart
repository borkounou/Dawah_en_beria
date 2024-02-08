import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:deen_in_beria/constants/styles.dart';
import 'package:deen_in_beria/constants/dimensions.dart';
import 'package:deen_in_beria/features/home/widgets/search_box.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: Dimensions.width20, right: Dimensions.width20),
          child: Column(children: [
            Gap(Dimensions.height50 - Dimensions.height10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  Text("Bienvenue,", style: Styles.headLineStyle4),
                  Gap(Dimensions.height5),
                  Text("Cherif!", style: Styles.headLineStyle2)
                ]),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.wallpapers13.com/wp-content/uploads/2015/12/Nature-Lake-Bled.-Desktop-background-image.jpg"),
                ),
              ],
            ),
            const SearchBox(size: 0)
          ]),
        )
      ],
    );
  }
}
