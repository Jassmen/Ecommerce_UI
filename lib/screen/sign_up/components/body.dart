
import 'package:ecommerce_ui/compontents/social_card.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screen/sign_up/components/sign_up_form.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screeHeight * 0.03,),
              Text("Register Account",
              style:headingStyle,),
              Text("Complete your details or continue \n with social media",textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screeHeight * 0.07,),// 7% of total screen
              SignUpForm(),
              SizedBox(height: SizeConfig.screeHeight * 0.07,),// 7% of total screen
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon:"assets/icons/google-icon.svg",press:(){}),
                  SocialCard(icon:"assets/icons/facebook-2.svg",press:(){}),
                  SocialCard(icon:"assets/icons/twitter.svg",press:(){}),
                ],
              ),
              SizedBox(height:getProportionateScreenWidth(20)),
              Text("By continue you confirm that you agree\nwith our Team and conditions",textAlign: TextAlign.center,)

            ],
          ),
        ),
      ),
    );
  }
}

