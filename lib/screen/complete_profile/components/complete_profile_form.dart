import 'package:ecommerce_ui/compontents/custom_suffix_icon.dart';
import 'package:ecommerce_ui/compontents/default_button.dart';
import 'package:ecommerce_ui/compontents/form_error.dart';
import 'package:ecommerce_ui/screen/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteSignUpScreen extends StatefulWidget {

  @override
  _CompleteSignUpScreenState createState() => _CompleteSignUpScreenState();
}

class _CompleteSignUpScreenState extends State<CompleteSignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String firstName, lastName ,phoneNum,address;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(30),),
            buildFirstNameFormField(),
            SizedBox(height: getProportionateScreenWidth(30),),
            buildLastNameFormField(),
            SizedBox(height: getProportionateScreenWidth(30),),
            buildPhoneNumFormField(),
            SizedBox(height: getProportionateScreenWidth(30),),
            buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenWidth(30),),
            DefaultButton(
              text: "Continue",
              press: (){
                if(_formKey.currentState.validate()){
                    // if it success go to OTP screen
                  Navigator.popAndPushNamed(context, OtpScreen.routeNam);
                }
              },
            )
          ],
        ));
  }

  TextFormField buildAddressFormField() {
    return TextFormField(

      onSaved: (newValue) => address=newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kAddressNullError)){
          setState(() {
            errors.remove(kAddressNullError);
          });
          return "";
        }
        address = value;
        return null;
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kAddressNullError)){
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: "Address",
        hintText: "Enter your address ",
//if we are defined our floatingLabelBehaviour in them ,then it's not applied
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CoustemSuffixIcon(svgIcon:"assets/icons/Location point.svg"),
      ),);
  }

  TextFormField buildPhoneNumFormField() {
    return TextFormField(
      keyboardType:TextInputType.number ,
      onSaved: (newValue) => phoneNum=newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kPhoneNumberNullError)){
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
          return "";
        }
        phoneNum = value;
        return null;

      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPhoneNumberNullError)){
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your Phone number ",
//if we are defined our floatingLabelBehaviour in them ,then it's not applied
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CoustemSuffixIcon(svgIcon:"assets/icons/Phone.svg"),
      ),);
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(

      onSaved: (newValue) => lastName=newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kNamelNullError)){
          setState(() {
            errors.remove(kNamelNullError);
          });
          return "";
        }
        lastName = value;
        return null;

      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kNamelNullError)){
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your last name",
//if we are defined our floatingLabelBehaviour in them ,then it's not applied
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CoustemSuffixIcon(svgIcon:"assets/icons/User.svg"),
      ),);
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(

      onSaved: (newValue) => firstName=newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kNamelNullError)){
          setState(() {
            errors.remove(kNamelNullError);
          });
          return "";
        }
        firstName = value;
        return null;

      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kNamelNullError)){
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: "First Name",
        hintText: "Enter your first name",
//if we are defined our floatingLabelBehaviour in them ,then it's not applied
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CoustemSuffixIcon(svgIcon:"assets/icons/User.svg"),
      ),);
  }
}

