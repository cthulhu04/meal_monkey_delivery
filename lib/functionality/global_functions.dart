import 'package:meal_monkey_food_delivery/models/my_order.dart';
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

//reken de array van my order screen een verdouble
Multiply_my_order(List<ItemOrder> prices) {
  List<double> check = [];
  prices.forEach((element) {
    check.add(element.price);
  });
  return check.reduce((value, element) => element + value);
}

increas_my_order(List price) {
  return price.reduce((value, element) => element + value);
}

//check out facture
check_out({double subtotal, double delivery, double discount}) =>
    (subtotal + delivery) - discount;
