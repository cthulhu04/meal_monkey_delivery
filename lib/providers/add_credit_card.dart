import 'package:flutter/cupertino.dart';
import 'package:meal_monkey_food_delivery/models/credit_card_model.dart';

class AddCreditCards extends ChangeNotifier {
  List<AddCreditCard> _addCreditCard = [
    AddCreditCard(
      name: 'visa',
      creditNumber: '1233621161414',
      id: 1,
    ),
  ];

  List<AddCreditCard> get getCreditCards => _addCreditCard;

  add_credit_card(AddCreditCard creditCard) {
    _addCreditCard.add(creditCard);
    notifyListeners();
  }

  delete_credit_card(AddCreditCard creditCard) {
    _addCreditCard.remove(creditCard);
    notifyListeners();
  }
}
