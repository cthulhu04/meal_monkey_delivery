import 'package:meal_monkey_food_delivery/utils/utils.dart';

//kijkt voor welke (category) de (item) vraagt
List count_list_menus(String item) {
  return imagesUtils.where((element) => element.category == item).toList();
}

// kijkt welke menus een promoties (promotions == waar) hebben
List check_for_promotions() {
  return imagesUtils.where((element) => element.promotions == true).toList();
}

// reken de (portion X de hoeveel) of portions
multiply_per_portion(count, portion) => count * (portion + 1);
