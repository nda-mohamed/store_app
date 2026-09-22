import 'package:flutter/material.dart';
import 'package:store_app/core/appcolor/appColor.dart';
import 'package:store_app/core/widgets/deals_item.dart';
import '../core/widgets/categories_item.dart';
import '../details_screen/details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> categName = [
    'Fruits',
    'Vegtables',
    'Meat',
    'Fish',
    'Sea Food',
    'Juice',
    'Egg & Milk',
    'Ice cream',
    'Cake',
  ];
  List<String> categImage = [
    'assets/images/categories/fruits.png',
    'assets/images/categories/vegetables.png',
    'assets/images/categories/meat.png',
    'assets/images/categories/fish.png',
    'assets/images/categories/seafood.png',
    'assets/images/categories/juice.png',
    'assets/images/categories/egg&milk.png',
    'assets/images/categories/icecream.png',
    'assets/images/categories/cake.png',
  ];
  List<int> categBackgroundColor = [
    0xFFEDD0FF,
    0xFFFFD9BA,
    0xFFFACCCC,
    0xFFFBC1BD,
    0xFFFFE299,
    0xFFD3E5C4,
    0xFFDAF2FC,
    0xFFFFDEF6,
    0xFFFECA97,
  ];

  List<String> fruitName = ['Orginal Mango', 'Apple', 'Banana', 'Avocado', 'Salmon'];
  List<String> fruitImage = [
    'assets/images/popularDeals/Orginal Mango.png',
    'assets/images/popularDeals/apple.png',
    'assets/images/popularDeals/banana.png',
    'assets/images/popularDeals/avocado.png',
    'assets/images/popularDeals/salmon.png',
  ];
  List<String> fruitPrice = [r'$ 4,99', r'$ 4,99', r'$ 5,99', r'$ 6,99', r'$ 7,99'];

  List<String> cartQuantity = ['/st', '/kg', '/kg', '/st', '/kg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: Colors.grey.shade50,
        toolbarHeight: 5,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/homescreen.png'),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColor.brown,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.orange,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.orange,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          SizedBox(
            height: 145,
            child: ListView.builder(
              itemCount: categName.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: CategoriesItem(
                    categName: categName[index],
                    categImage: categImage[index],
                    categBackgroundColor: categBackgroundColor[index],
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Deals',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColor.brown,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.orange,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.orange,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: fruitName.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: fruitImage[index],
                          nameFruit: fruitName[index],
                          price: fruitPrice[index],
                          cartQuantity: cartQuantity[index],
                        ),
                      ),
                    );
                  },
                  child: DealsItem(
                    image: fruitImage[index],
                    title: fruitName[index],
                    price: fruitPrice[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
