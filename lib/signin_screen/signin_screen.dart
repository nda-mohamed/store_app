import 'package:flutter/material.dart';
import 'package:store_app/core/appcolor/appColor.dart';
import '../core/helpers/custom_app_button.dart';
import '../core/helpers/custom_app_field.dart';
import '../home_navigator/home_navigator.dart';
import '../signup_screen/signup_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios, color: AppColor.orange),
        ),
        centerTitle: true,
        title: Text(
          'Sign In',
          style: TextStyle(
            fontSize: 24,
            color: AppColor.orange,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: Form(
        key: formkey,

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/signin.png'),

                SizedBox(height: 54),

                Text(
                  'Enter your Email and\npassword to access your account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.brown,
                  ),
                ),

                SizedBox(height: 18),

                CustomAppField(hint: 'Email'),

                SizedBox(height: 18),

                CustomAppField(
                  hint: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: AppColor.orange,
                  ),
                ),

                SizedBox(height: 9),

                Text(
                  'Forgot password?',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.orange,
                  ),
                ),

                SizedBox(height: 32),

                CustomAppButton(
                  text: 'Sign In',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeNavigator()),
                      );
                    }
                  },
                ),

                SizedBox(height: 13),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.brown,
                      ),
                    ),

                    SizedBox(width: 5),

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
