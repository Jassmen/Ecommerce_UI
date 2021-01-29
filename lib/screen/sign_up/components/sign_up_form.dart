import 'package:ecommerce_ui/compontents/custom_suffix_icon.dart';
import 'package:ecommerce_ui/compontents/default_button.dart';
import 'package:ecommerce_ui/compontents/form_error.dart';
import 'package:ecommerce_ui/screen/complete_profile/complete_profile.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email, password ,confirmPassword;
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

          buildEmailFormField(),
          SizedBox(height: getProportionateScreenWidth(30),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenWidth(30),),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenWidth(40),),
          DefaultButton(text: "continue",
            press: (){
              if(_formKey.currentState.validate()){
                //Go to complete profile page
                Navigator.popAndPushNamed(context, CompleteProfile.routeName);
              }
            },),

        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        confirmPassword = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CoustemSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CoustemSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType:TextInputType.emailAddress,
      onSaved: (newValue) => email=newValue,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
          return "";
        }else if(emailValidatorRegExp.hasMatch(value)
            && errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
          return "";
        }
        password = value;
        return null;

      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        }else if(!emailValidatorRegExp.hasMatch(value)
            && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration:InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
//if we are defined our floatingLabelBehaviour in them ,then it's not applied
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:CoustemSuffixIcon(svgIcon:"assets/icons/Mail.svg"),
      ),);
  }
}
