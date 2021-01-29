import 'package:ecommerce_ui/compontents/default_button.dart';
import 'package:ecommerce_ui/screen/home/home_screen.dart';
import 'package:ecommerce_ui/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screeHeight  * 0.04,),
            Image.asset("assets/images/success.png",
              height: SizeConfig.screeHeight * 0.4 , //40%
              ),
            SizedBox(height: SizeConfig.screeHeight  * 0.08),
            Text(
              "Login Success",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: DefaultButton(text: "Back to home",
              press: (){
                Navigator.popAndPushNamed(context, HomeScreen.routeName);

              })),
         Spacer(),


          ],
        ));
  }
}
