import 'package:ecommerce_ui/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screen/sign_up/sign%20_up.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ",style: TextStyle(fontSize: getProportionateScreenWidth(12)),),
        GestureDetector(
          //onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp())),
          onTap:() =>  Navigator.popAndPushNamed(context, SignUp.routeName),
          child: Text("SIGN UP",style: TextStyle(fontSize: getProportionateScreenWidth(12),color: kPrimaryColor),) ,
        ),

      ],
    );
  }
}