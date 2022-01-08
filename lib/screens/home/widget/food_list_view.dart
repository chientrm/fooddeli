import 'package:flutter/material.dart';
import 'package:fooddeli/constants/colors.dart';
import 'package:fooddeli/models/restaurant.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;
  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final categories = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: categories
            .map(
              (e) => ListView.separated(
                itemBuilder: (context, index) => FoodItem(
                  restaurant.menu[categories[selected]]![index],
                ),
                separatorBuilder: (_, index) => SizedBox(height: 15),
                itemCount: restaurant.menu[categories[selected]]!.length,
              ),
            )
            .toList(),
      ),
    );
  }
}
