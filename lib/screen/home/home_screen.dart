import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/screen/home/components/body.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  static String routeName="/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

    );
  }
}
