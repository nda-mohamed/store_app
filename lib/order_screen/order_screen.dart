import 'package:flutter/material.dart';
import '../core/appcolor/appColor.dart';
import '../core/widgets/order_item.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});

  final List<String> orderNumber = [
    'Order #345',
    'Order #346',
    'Order #347',
  ];
  final List<String> orderStatus = [
    'Delivered',
    'Cancelled',
    'Delivered',
  ];
  final List<String> orderDate = [
    'October 26, 2014',
    'October 14, 2016',
    'July 26, 2017',
  ];
  final List<String> orderPrice = [
    r'$700',
    r'$452',
    r'$281',
  ];
  final List<Color> statusColor = [
    Colors.green,
    Colors.red,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          leading: SizedBox.shrink(),
          backgroundColor: Colors.grey.shade50,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Orders',
            style: TextStyle(
              fontSize: 24,
              color: AppColor.orange,
              fontWeight: FontWeight.w700,
            ),
          ),
          bottom: TabBar(
            indicatorColor: AppColor.orange,
            labelColor: AppColor.orange,
            unselectedLabelColor: AppColor.brown,
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'History'),
            ],
          ),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('No Ongoing Orders')),

                  ListView.builder(
                    itemCount: orderNumber.length,
                    itemBuilder: (context, index) {
                      return OrderItem(
                        orderNumber: orderNumber[index],
                        orderStatus: orderStatus[index],
                        orderDate: orderDate[index],
                        orderPrice: orderPrice[index],
                        statusColor: statusColor[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}