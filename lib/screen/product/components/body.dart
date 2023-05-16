import 'package:flutter/material.dart';
import 'package:furniture1/components/search_box.dart';
import 'package:furniture1/constraints.dart';
import 'package:furniture1/screen/details/details_screen.dart';
import 'package:furniture1/screen/product/components/category_list.dart';
import 'package:furniture1/screen/product/components/product_card.dart';

import '../../../model/product_model.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(
            onchanged: (value) {},
          ),
          CategoryList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                        itemIndex: index,
                        product: products[index],
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(product: products[index]),//dd
                            ),
                          );
                        },
                      ))
            ],
          ))
        ],
      ),
    );
  }
}
