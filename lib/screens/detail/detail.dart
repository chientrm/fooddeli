import 'package:flutter/material.dart';
import 'package:fooddeli/constants/colors.dart';
import 'package:fooddeli/models/food.dart';
import 'package:fooddeli/screens/detail/widget/food_detail.dart';
import 'package:fooddeli/screens/detail/widget/food_image.dart';
import 'package:fooddeli/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  DetailPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImage(food),
            FoodDetail(food),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  food.quantity.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
