

import 'package:ecommerce_ui/screen/home/components/popular_products.dart';

import 'package:ecommerce_ui/screen/home/components/special_offers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'category.dart';
import 'discount_banner.dart';
import 'home_header.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30),),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30),),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30),),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30),),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(50),),


          ],
        ),
      ),
    );
  }
}


















