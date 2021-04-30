import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_food_delivery/models/my_order.dart';

class MyOrderProviver extends ChangeNotifier {
  List<MyOrder> _myOrder = [];

  List<MyOrder> get getMyOrders => _myOrder;

  void setOrder(MyOrder order) {
    _myOrder.add(order);
    notifyListeners();
  }
}
