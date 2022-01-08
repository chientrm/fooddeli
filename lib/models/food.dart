class Food {
  String imageUrl;
  String description;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(this.imageUrl, this.description, this.name, this.waitTime, this.score,
      this.cal, this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});

  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'Delicious noodles',
          'Noodles',
          '20 mins',
          4.5,
          '325 kcal',
          12,
          2,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'The best noodles made by Japan top.1 chief',
          hightLight: true),
      Food(
          'assets/images/dish2.png',
          'Tasty sausage',
          'Sausages',
          '15 mins',
          4.3,
          '500 kcal',
          12,
          2,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'Very delicious Sausage dishes'),
      Food(
          'assets/images/dish3.png',
          'Delicious Ratatoulie',
          'Ratatoulie',
          '20 mins',
          4.5,
          '325 kcal',
          12,
          2,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'The best noodles made by Japan top.1 chief'),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/dish3.png',
          'Delicious Ratatoulie',
          'Ratatoulie',
          '20 mins',
          4.5,
          '325 kcal',
          12,
          2,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'The best noodles made by Japan top.1 chief'),
      Food(
          'assets/images/dish4.png',
          'Tasty Chicken Soup',
          'Chicken Soup',
          '15 mins',
          4.3,
          '500 kcal',
          12,
          2,
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          'Very delicious Sausage dishes',
          hightLight: true),
    ];
  }
}
