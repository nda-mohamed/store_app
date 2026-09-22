import 'package:flutter/material.dart';
import 'package:store_app/cart_screen/cart_screen.dart';
import 'package:store_app/category_screen/category_screen.dart';
import 'package:store_app/home_navigator/home_navigator.dart';
import 'package:store_app/home_screen/home_screen.dart';
import 'package:store_app/order_screen/order_screen.dart';
import 'package:store_app/profile_screen/profile_screen.dart';
import 'package:store_app/signin_screen/signin_screen.dart';
import 'package:store_app/signup_screen/signup_screen.dart';
import 'package:store_app/splash_screen/splash_screen.dart';
import 'package:store_app/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      home: SplashScreen(),
    );
  }
}
