import 'package:ecommerce_ui/screen/complete_profile/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfile extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Complete profile"),
      ),
      body: Body(),
    );
  }
}
