import 'package:flutter/material.dart';
import '../core/appcolor/appColor.dart';
import '../core/helpers/custom_app_button.dart';
import '../core/widgets/cart_item.dart';
import '../details_screen/details_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<String> cartName = ['Orginal Mango', 'Apple', 'Banana', 'Avocado', 'Salmon'];
  final List<String> cartImage = [
    'assets/images/popularDeals/Orginal Mango.png',
    'assets/images/popularDeals/apple.png',
    'assets/images/popularDeals/banana.png',
    'assets/images/popularDeals/avocado.png',
    'assets/images/popularDeals/salmon.png',
  ];
  final List<String> cartPrice = [r'$ 4,99', r'$ 4,99', r'$ 5,99', r'$ 24', r'$ 50'];
  final List<String> cartQuantity = ['/st', '/kg', '/kg', '/st', '/kg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: Colors.grey.shade50,
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(
            fontSize: 24,
            color: AppColor.orange,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartName.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: cartImage[index],
                          nameFruit: cartName[index],
                          price: cartPrice[index],
                          cartQuantity: cartQuantity[index],
                        ),
                      ),
                    );
                  },
                  child: CartItem(
                    cartImage: cartImage[index],
                    cartName: cartName[index],
                    cartPrice: cartPrice[index],
                    cartQuantity: cartQuantity[index],
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomAppButton(text: 'Checkout', onPressed: () {}),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
