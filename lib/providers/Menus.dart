import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_food_delivery/models/menus.dart';
import 'package:provider/provider.dart';

class MenusProviders extends ChangeNotifier {
  List<Menus> _menus = [];

  List<Menus> get menus => _menus;

  void addMenus(Menus menu) {
    _menus.add(menu);
    notifyListeners();
  }

  void popMenus(Menus menu) {
    _menus.remove(menu);
    notifyListeners();
  }
}
