import 'package:flutter/material.dart';

import '../../../constraints.dart';
import 'color_dot.dart';

class ListOfColor extends StatelessWidget {
  const ListOfColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
