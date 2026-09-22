import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/counter.dart';
import '../appcolor/appColor.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.cartImage,
    required this.cartName,
    required this.cartPrice,
    required this.cartQuantity,
    this.initialCount = 0,
  });

  final String cartImage;
  final String cartName;
  final String cartPrice;
  final String cartQuantity;
  final int initialCount;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Color(0xFFA42B32),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16),
        child: const Icon(
          Icons.delete,
          size: 30,
          color: Colors.white,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: Image.asset(widget.cartImage, height: 70)),

                const SizedBox(width: 20),

                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.cartName,
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColor.brown,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Counter(),
                    ],
                  ),
                ),

                Row(
                  children: [
                    Text(
                      widget.cartPrice,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColor.brown,
                      ),
                    ),

                    const SizedBox(width: 2),

                    Text(
                      widget.cartQuantity,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.brown,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            Divider(
              color: Colors.brown.shade50,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
