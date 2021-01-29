import 'package:ecommerce_ui/compontents/product_card.dart';
import 'package:ecommerce_ui/models/Product.dart';
import 'package:ecommerce_ui/screen/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product",
          press: (){

          },),
        SizedBox(height: getProportionateScreenWidth(30)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) => ProductCard(product: demoProducts[index]),),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}