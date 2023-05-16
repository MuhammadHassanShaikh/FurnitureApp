import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture1/constraints.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("Dashboard"),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notification.svg")),
      ],
    );
  }
}
