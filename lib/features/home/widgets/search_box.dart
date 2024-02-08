import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:deen_in_beria/constants/dimensions.dart';

class SearchBox extends StatelessWidget {
  final double size;
  const SearchBox({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height10 * 5,
      padding: EdgeInsets.only(left: size, right: size),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(Dimensions.height10 - 3),
        elevation: 0,
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: Dimensions.width5),
                  child: Icon(
                    FluentSystemIcons.ic_fluent_search_regular,
                    color: Colors.white,
                    size: Dimensions.iconSize24,
                  ),
                ),
              ),
              filled: true,
              fillColor: Colors.black12,
              contentPadding: EdgeInsets.only(top: Dimensions.height10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.height10 - 3),
                ),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.height10 - 3),
                ),
                borderSide: const BorderSide(color: Colors.black38, width: 1),
              ),
              hintText: "Search artistes, categories ...",
              hintStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.font12)),
        ),
      ),
    );
  }
}
