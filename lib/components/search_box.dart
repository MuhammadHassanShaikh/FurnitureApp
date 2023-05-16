import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constraints.dart';
class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key, required this.onchanged,
  });
  final ValueChanged onchanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 4, horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: onchanged,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
