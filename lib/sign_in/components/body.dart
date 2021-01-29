import 'package:ecommerce_ui/compontents/custom_suffix_icon.dart';
import 'package:ecommerce_ui/compontents/default_button.dart';
import 'package:ecommerce_ui/compontents/form_error.dart';
import 'package:ecommerce_ui/compontents/no_account_text.dart';
import 'package:ecommerce_ui/compontents/social_card.dart';
import 'package:ecommerce_ui/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screen/sign_up/sign%20_up.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import '../../size_config.dart';
import '../sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screeHeight * 0.04,),
                  Text(
                      "Welcome Back",
                    style: TextStyle(color: Colors.black,fontSize: getProportionateScreenWidth(28),fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign in with your email and password \n or continue with social media ",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screeHeight * 0.08,),
                  SignForm(),
                  SizedBox(height: SizeConfig.screeHeight * 0.08,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialCard(icon:"assets/icons/google-icon.svg",press:(){}),
                        SocialCard(icon:"assets/icons/facebook-2.svg",press:(){}),
                        SocialCard(icon:"assets/icons/twitter.svg",press:(){}),
                      ],
                  ),
                  SizedBox(height:getProportionateScreenHeight(20)),
                  NoAccountText(),

                ],
              ),
            ),
          ),
        ));
  }
}







