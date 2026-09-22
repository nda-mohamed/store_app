import 'package:flutter/material.dart';
import '../appcolor/appColor.dart';

class DealsItem extends StatelessWidget {
  const DealsItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 3,
            blurRadius: 5,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Center(child: Image.asset(image))),

          SizedBox(height: 10),

          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: AppColor.brown,
              fontWeight: FontWeight.w700,
            ),
          ),

          Text(
            '1kg,priceg',
            style: TextStyle(
              fontSize: 12,
              color: AppColor.grey,
              fontWeight: FontWeight.w400,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.orange,
                  fontWeight: FontWeight.w700,
                ),
              ),

              CircleAvatar(
                radius: 15,
                backgroundColor: AppColor.green,
                child: Icon(Icons.add, size: 20, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
