import 'package:airplane_travel/shared/theme.dart';
import 'package:airplane_travel/ui/widgets/custom_button.dart';
import 'package:airplane_travel/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          )
        ),
      );
    }
    Widget inputSection(){
      Widget nameInput(){
        return CustomTextFormField(
          formTitle: 'Nama',
          formHint: 'Nama Lengkap',
          margin: EdgeInsets.only(bottom: 20),
        );
      }
      Widget emailInput(){
        return CustomTextFormField(
          formTitle: 'Email',
          formHint: 'E-mail Valid',
          margin: EdgeInsets.only(bottom: 20),
        );
      }
      Widget passwordInput(){
        return CustomTextFormField(
            formTitle: 'Password',
            obscureText: true,
            formHint: 'Password Anda',
            margin: EdgeInsets.only(bottom: 20),
        );
      }
      Widget hobbyInput(){
        return CustomTextFormField(
          formTitle: 'Hobby',
          formHint: 'Insert Your Hobby',
          margin: EdgeInsets.only(bottom: 30),
        );
      }
      Widget buttonGetStarted(){
        return CustomButton(
            buttonText: 'Get Started',
            onPressed: (){
              Navigator.pushNamed(context, '/bonus');
            }
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            buttonGetStarted(),
          ],
        ),
      );
    }
    Widget buttonTac() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top:  50,
          bottom: 73,
        ),
        child: TextButton(
          onPressed: (){},
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }


    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            buttonTac(),
          ],
        ),
      ),
    );
  }
}
