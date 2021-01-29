import 'package:ecommerce_ui/screen/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Special for you",
          press: (){

          },),
        SizedBox(height:getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                category: "Smart Phone",
                numOfBrand: 18,
                press: (){

                },),
              SpecialOfferCard(
                image: "assets/images/Image Banner 3.png",
                category: "Fashion",
                numOfBrand: 20,
                press: (){

                },),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        ),
      ],
    );
  }
}
class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required  this.image,
    @required this.numOfBrand,
    @required this.press,
  }) : super(key: key);

  final String category,image;
  final int numOfBrand;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
          height: getProportionateScreenWidth(100),
          width: getProportionateScreenWidth(242),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(image,fit: BoxFit.cover,),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors:[
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.15)
                          ])
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenWidth(10)),
                  child: Text.rich(
                      TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                                text:"$category\n",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(18),
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            TextSpan(
                                text: "$numOfBrand Brands"
                            )
                          ]
                      )
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
