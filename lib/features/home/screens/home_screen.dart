import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:deen_in_beria/constants/styles.dart';
import 'package:deen_in_beria/constants/dimensions.dart';
import 'package:deen_in_beria/features/home/widgets/search_box.dart';
import 'package:deen_in_beria/features/home/screens/song_screen.dart';

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            Gap(Dimensions.height20),
            const SearchBox(size: 0),
            Gap(Dimensions.height10),
            // const RecentlyPlayedSongs(),
            Gap(Dimensions.height10),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Dimensions.radius15 / 3),
                  child: Image.network(
                    "https://wallpapercave.com/wp/F3f5D69.jpg",
                    height: Dimensions.height15 * 10,
                    // width: Dimensions.width15 * 5,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    top: Dimensions.height30,
                    left: Dimensions.width10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tes audios favories",
                            style: Styles.headLineStyle1
                                .copyWith(color: Colors.white)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Meilleures audios de ton choix! Qu'Allah te benit",
                              maxLines: 2,
                              style: Styles.headLineStyle5,
                            ),
                            Gap(Dimensions.width20 * 3),
                            CircleAvatar(
                                radius: Dimensions.radius20,
                                backgroundColor: Colors.deepPurpleAccent,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FluentSystemIcons
                                        .ic_fluent_arrow_right_filled,
                                    color: Colors.white,
                                    size: Dimensions.iconSize24,
                                  ),
                                ))
                          ],
                        )
                      ],
                    ))
              ],
            ),

            // Gap(Dimensions.height10),
            Gap(Dimensions.height30),
            const SongScreen()
          ]),
        )
      ],
    );
  }
}
