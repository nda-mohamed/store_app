import 'package:flutter/material.dart';
import '../appcolor/appColor.dart';

class Counter extends StatefulWidget {
  const Counter({
    super.key,
    this.radius = 11,
    this.iconSize = 16,
    this.fontSize = 18,
    this.spacing = 16,
    this.initialCount = 0,
  });

  final double radius;
  final double iconSize;
  final double fontSize;
  final double spacing;
  final int initialCount;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int itemCount;

  @override
  void initState() {
    super.initState();
    itemCount = widget.initialCount;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(widget.radius * 2),
        border: Border.all(color: Colors.brown.shade100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              if (itemCount > 0) {
                setState(() {
                  itemCount--;
                });
              }
            },
            child: CircleAvatar(
              radius: widget.radius,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.remove,
                size: widget.iconSize,
                color: AppColor.brown,
              ),
            ),
          ),

          SizedBox(width: widget.spacing),

          Text(
            '$itemCount',
            style: TextStyle(
              fontSize: widget.fontSize,
              color: AppColor.brown,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(width: widget.spacing),

          GestureDetector(
            onTap: () {
              setState(() {
                itemCount++;
              });
            },
            child: CircleAvatar(
              radius: widget.radius,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                size: widget.iconSize,
                color: AppColor.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}