import 'package:flutter/material.dart';
import 'package:deen_in_beria/constants/dimensions.dart';

class RecentlyPlayedSongs extends StatefulWidget {
  const RecentlyPlayedSongs({super.key});

  @override
  State<RecentlyPlayedSongs> createState() => _RecentlyPlayedSongsState();
}

class _RecentlyPlayedSongsState extends State<RecentlyPlayedSongs> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: Dimensions.width15 * 5,
            height: Dimensions.height30 * 3,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://wallpapercave.com/wp/F3f5D69.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(Dimensions.radius15 / 3)),
          );
        });
  }
}
