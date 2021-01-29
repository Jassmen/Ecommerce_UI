import 'package:ecommerce_ui/screen/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static  String  routeName="/sign_up";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text ("Sign Up"),
      ),
      body: Body(),
    );
  }
}
