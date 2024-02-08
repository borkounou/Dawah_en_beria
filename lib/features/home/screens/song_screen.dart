import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:deen_in_beria/constants/styles.dart';
import 'package:deen_in_beria/constants/dimensions.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Decouvrir des nouvelles audios", style: Styles.headLineStyle2),
          Gap(Dimensions.height15),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, MainPlaylistScreen.routeName,
                    //     arguments: playlist);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: Dimensions.height5),
                    // padding: EdgeInsets.all(Dimensions.width10),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15)),
                    height: Dimensions.height15 * 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15 / 3),
                          child: Image.network(
                            "https://www.wallpapers13.com/wp-content/uploads/2015/12/Nature-Lake-Bled.-Desktop-background-image.jpg",
                            height: Dimensions.height15 * 5,
                            width: Dimensions.width15 * 5,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ramadan 1',
                                style: Styles.headLineStyle3,
                              ),
                              Text(
                                'Kutbah pour ramadan, Cheik Nousradine 1 Kutbah pour ramadan, Cheik Nousradine 1Kutbah pour ramadan, Cheik Nousradine 1',
                                maxLines: 2,
                                style: Styles.headLineStyle5,
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
