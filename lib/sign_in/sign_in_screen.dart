import 'package:ecommerce_ui/them.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text("Sign In"),
     ),

     body: Body(),

   );
  }
  
}