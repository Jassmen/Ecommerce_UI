import 'package:ecommerce_ui/compontents/custom_suffix_icon.dart';
import 'package:ecommerce_ui/compontents/default_button.dart';
import 'package:ecommerce_ui/compontents/form_error.dart';
import 'package:ecommerce_ui/compontents/no_account_text.dart';
import 'package:ecommerce_ui/screen/sign_up/sign%20_up.dart';
import 'package:ecommerce_ui/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui/size_config.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screeHeight * 0.04,),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Please enter your email and we will \n send you a link to return to your account ",
                textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screeHeight * 0.1,),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
    final _formKey = GlobalKey<FormState>();
  List<String> errors=[];
  String email;
  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: [
        TextFormField(
        keyboardType:TextInputType.emailAddress,
        onSaved: (newValue) => email=newValue,
        onChanged: (value){
          if(value.isNotEmpty && errors.contains(kEmailNullError)){
            setState(() {
              errors.remove(kEmailNullError);
            });
          }else if(emailValidatorRegExp.hasMatch(value)
              && errors.contains(kInvalidEmailError)){
            setState(() {
              errors.remove(kInvalidEmailError);
            });}
          return null;
        },
        validator: (value){
          if(value.isEmpty && !errors.contains(kEmailNullError)){
            setState(() {
              errors.add(kEmailNullError);
            });
          }else if(!emailValidatorRegExp.hasMatch(value)
              && !errors.contains(kInvalidEmailError)){
            setState(() {
              errors.add(kInvalidEmailError);
            });
          }
          return null;
        },
        decoration:InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
//if we are defined our floatingLabelBehaviour in them ,then it's not applied
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon:CoustemSuffixIcon(svgIcon:"assets/icons/Mail.svg"),
        ),),
          SizedBox(height: getProportionateScreenHeight(30),),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screeHeight * 0.1,),
          DefaultButton(text: "Continue",press: (){
            if(_formKey.currentState.validate()){
              //Do what do you want
              //_formKey.currentState.save();
            }
          },),
          SizedBox(height: SizeConfig.screeHeight * 0.1,),
          NoAccountText(),
        ],
      ),
    );
  }
}


