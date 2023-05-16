import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture1/constraints.dart';
import 'package:furniture1/model/product_model.dart';
import 'package:furniture1/screen/details/components/body.dart';

import '../product/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Bodys(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      centerTitle: false,
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart_with_item.svg"))
      ],
    );
  }
}
