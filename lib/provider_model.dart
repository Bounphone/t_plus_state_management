import 'package:flutter/material.dart';

class ProviderModel extends ChangeNotifier {
  String _firstName = 'A';
  String _surname = 'B';

  String get getSurname => _surname;

  set setSurname(String surname) {
    _surname = surname;
    notifyListeners();
  }

  String get getFirstName => _firstName;

  set setFirstName(String firstName) {
    _firstName = firstName;
    notifyListeners();
  }
}
