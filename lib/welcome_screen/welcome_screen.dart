import 'package:flutter/material.dart';
import 'package:store_app/core/appcolor/appColor.dart';
import 'package:store_app/signin_screen/signin_screen.dart';
import 'package:store_app/signup_screen/signup_screen.dart';
import '../core/helpers/custom_app_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/onboarding.png'),

            SizedBox(height: 70),

            Text(
              'Welcome to our app',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColor.brown,
              ),
            ),

            SizedBox(height: 16),

            Text(
              'Shop online and get groceries\ndelivered from stores to your home\nin as fast as 1 hour .',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.brown,
              ),
            ),

            SizedBox(height: 51),

            CustomAppButton(
              text: 'Sign Up',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupScreen()));
              },
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SigninScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppColor.orange,
                padding: EdgeInsets.symmetric(vertical: 13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(color: AppColor.orange),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
