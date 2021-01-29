import 'package:ecommerce_ui/screen/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName="ecommerce_ui/screen/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(),
        title: Text("Login Success",),
        ),
      body: Body(),
    );
  }
}
