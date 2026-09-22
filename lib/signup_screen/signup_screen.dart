import 'package:flutter/material.dart';
import '../core/appcolor/appColor.dart';
import '../core/helpers/custom_app_button.dart';
import '../core/helpers/custom_app_field.dart';
import '../home_navigator/home_navigator.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

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
          'Sign UP',
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
                Image.asset('assets/images/signup.png', height: 278),

                SizedBox(height: 13),

                Text(
                  'Please enter your information to\ncreate an account.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColor.brown,
                  ),
                ),

                SizedBox(height: 36),

                CustomAppField(hint: 'Email'),

                SizedBox(height: 18),

                CustomAppField(
                  hint: 'Password',
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: AppColor.orange,
                  ),
                ),

                SizedBox(height: 18),

                CustomAppField(
                  hint: 'Confirm Password',
                  suffixIcon: Icon(
                    Icons.visibility_outlined,
                    color: AppColor.orange,
                  ),
                ),

                SizedBox(height: 70),

                CustomAppButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeNavigator()),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
