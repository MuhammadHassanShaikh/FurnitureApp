import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constraints.dart';

class ChartAndAddToCart extends StatelessWidget {
  const ChartAndAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
      decoration: BoxDecoration(
          color: Color(0xFFFCBF1E), borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: 18,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          TextButton.icon(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/shopping-bag.svg",
                height: 18,
              ),
              label: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
