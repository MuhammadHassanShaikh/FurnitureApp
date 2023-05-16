import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture1/constraints.dart';
import 'package:furniture1/model/product_model.dart';
import 'package:furniture1/screen/details/components/product_image.dart';

import 'cart_and_addtocart.dart';
import 'color_dot.dart';
import 'list_of_color.dart';

class Bodys extends StatelessWidget {
  final Product product;
  const Bodys({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // height: 100,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: ProductPoster(
                      size: size,
                      image: product.image,
                    ),
                  ),
                  ListOfColor(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  )
                ],
              ),
            ),
            ChartAndAddToCart()
          ],
        ),
      ),
    );
  }
}
