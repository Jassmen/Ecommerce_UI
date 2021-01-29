import 'package:ecommerce_ui/compontents/custom_suffix_icon.dart';
import 'package:ecommerce_ui/compontents/default_button.dart';
import 'package:ecommerce_ui/compontents/form_error.dart';
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screeHeight * 0.02),
              Text("Complete profile", style: headingStyle,),
              Text("Complete your detail or\ncontinue with social media",textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screeHeight * 0.05),
              CompleteSignUpScreen(),
              SizedBox(height: getProportionateScreenWidth(30),),
              Text("By continue you confirm that you agree\nwith our Team and conditions",textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
