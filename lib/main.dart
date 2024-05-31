import 'package:airplane_travel/ui/pages/bonus_page.dart';
import 'package:airplane_travel/ui/pages/get_started_page.dart';
import 'package:airplane_travel/ui/pages/main_page.dart';
import 'package:airplane_travel/ui/pages/sign_in_page.dart';
import 'package:airplane_travel/ui/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => SplashPage(),
        '/get-started' :(context) => GetStartedPage(),
        '/sign-in' :(context) => SignInPage(),
        '/sign-up' :(context) => SignUpPage(),
        '/bonus' :(context) => BonusPage(),
        '/main' :(context) => MainPage(),
      },
    );
  }
}