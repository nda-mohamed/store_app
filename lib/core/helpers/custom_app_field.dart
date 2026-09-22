import 'package:flutter/material.dart';

class CustomAppField extends StatelessWidget {
  CustomAppField({super.key, required this.hint, this.suffixIcon, this.validator});

  final String hint;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFFAC8E71),
        ),
        filled: true,
        fillColor: Color(0xFFF3F3F3),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF3F3F3)),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF3F3F3)),
        ),
      ),

      validator: (validator) {
        if (validator!.isEmpty || validator == null) {
          return 'Please enter your $hint';
        }
        return null;
      },
    );
  }
}
