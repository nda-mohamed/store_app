import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/custom_app_field.dart';
import 'package:store_app/core/widgets/categories_item.dart';
import '../core/appcolor/appColor.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade50,
        leading: SizedBox.shrink(),
        title: Text(
          'Categories',
          style: TextStyle(
            fontSize: 24,
            color: AppColor.orange,
            fontWeight: FontWeight.w700,
          ),
        ),

        bottom: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: CustomAppField(hint: 'Search'),
            ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GridView.builder(
          itemCount: categName.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) {
            return CategoriesItem(
              categName: categName[index],
              categImage: categImage[index],
              categBackgroundColor: categBackgroundColor[index],
            );
          },
        ),
      )
    );
  }
}
