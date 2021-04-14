import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  String _authentication;

  String get getAuthentication => _authentication;

  void setAuthentication(String value) {
    _authentication = value;
    notifyListeners();
  }
}
