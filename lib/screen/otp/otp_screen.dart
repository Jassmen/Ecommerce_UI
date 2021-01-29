import 'package:ecommerce_ui/screen/otp/components/body.dart';
import 'package:flutter/material.dart';


class OtpScreen extends StatelessWidget {
  static String routeNam="/otp_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
