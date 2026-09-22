import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/counter.dart';
import '../core/appcolor/appColor.dart';
import '../core/helpers/custom_app_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.image,
    required this.nameFruit,
    required this.price,
    required this.cartQuantity,
  });

  final String image;
  final String nameFruit;
  final String price;
  final String cartQuantity;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade50,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios, color: AppColor.orange),
          ),
        ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              height: 350,
              child: Image.asset(widget.image),
            ),

            SizedBox(height: 30),

            Text(
              widget.nameFruit,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColor.brown,
              ),
            ),

            Row(
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: AppColor.brown,
                  ),
                ),

                SizedBox(width: 6),

                Text(
                  widget.cartQuantity,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: AppColor.brown,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text(
              'Golden Ripe Alphonsa mangoes delivered to your\nhouse '
              'in the most hygenic way ever... Best for eating\nplain '
              'but can also be made into shakes and cakes.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: AppColor.brown,
              ),
            ),

            SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Counter(radius: 14, iconSize: 20, fontSize: 22, spacing: 70),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: Icon(
                    isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
                    color: AppColor.orange,
                    size: 32,
                  ),
                ),
              ],
            ),

            Spacer(),

            CustomAppButton(text: 'Add to Cart', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
