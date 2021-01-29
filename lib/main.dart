import 'package:ecommerce_ui/constants.dart';
import 'package:ecommerce_ui/routes.dart';
import 'package:ecommerce_ui/screen/splash_screen.dart';
import 'package:ecommerce_ui/them.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themData(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }


}




