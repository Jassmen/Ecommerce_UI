

import 'package:ecommerce_ui/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui/screen/cart/cart_screen.dart';
import 'package:ecommerce_ui/screen/complete_profile/complete_profile.dart';
import 'package:ecommerce_ui/screen/home/home_screen.dart';
import 'package:ecommerce_ui/screen/login_success/login_success.dart';
import 'package:ecommerce_ui/screen/otp/otp_screen.dart';
import 'package:ecommerce_ui/screen/sign_up/sign%20_up.dart';
import 'package:ecommerce_ui/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/screen/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes={
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen(),
  LoginSuccess.routeName: (context) =>  LoginSuccess(),
  SignUp.routeName:   (context) =>  SignUp() ,
  CompleteProfile.routeName :(context) => CompleteProfile(),
  OtpScreen.routeNam: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};

