
import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../otp_form.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screeHeight * 0.05,),
              Text("OTP Verification",style:headingStyle),
              Text("We send your code to +20 0120 098 ****"),
              buildTimer(),
              SizedBox(height: SizeConfig.screeHeight * 0.15,),
              OtpForm() ,
              SizedBox(height:  SizeConfig.screeHeight * 0.1),  //10%
              GestureDetector(
                onTap: (){
                  // Resend OTP code
                },
                  child: Text("Resend OTP code", style:TextStyle(decoration: TextDecoration.underline))),

            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("This code will expired in"),
              TweenAnimationBuilder(
                  tween: Tween(begin: 30.0, end: 0),
                  duration: Duration(seconds: 30),
                  builder: (context, value , child) => Text("00:${value.toInt()}",
                    style: TextStyle(color: kPrimaryColor),),
                onEnd: (){

                },
              ),
            ],
          );
  }
}


