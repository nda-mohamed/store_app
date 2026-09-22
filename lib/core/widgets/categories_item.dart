import 'package:flutter/material.dart';
import '../appcolor/appColor.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
    required this.categName,
    required this.categImage,
    required this.categBackgroundColor,
  });

  final String categName;
  final String categImage;
  final int categBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Color(categBackgroundColor),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(categImage),
          ),
        ),

        SizedBox(height: 8),

        Text(
          categName,
          style: TextStyle(
            fontSize: 15,
            color: AppColor.brown,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
