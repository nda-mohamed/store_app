import 'package:flutter/material.dart';
import '../appcolor/appColor.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
    required this.orderNumber,
    required this.orderStatus,
    required this.orderDate,
    required this.orderPrice,
    required this.statusColor,
  });

  final String orderNumber;
  final String orderStatus;
  final String orderDate;
  final String orderPrice;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: AppColor.orange,
                  child: Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      orderNumber,
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColor.brown,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 2),

                    Text(
                      orderStatus,
                      style: TextStyle(
                        fontSize: 14,
                        color: statusColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 2),

                    Text(
                      orderDate,
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColor.brown,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),

              Text(
                orderPrice,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColor.orange,
                ),
              ),
            ],
          ),

          Divider(
            color: Colors.brown.shade50,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}