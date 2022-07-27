import 'package:flutter/material.dart';

class SecondProviderModel extends ChangeNotifier{
  String _secondDemo = '';

  String get getSecondDemo => _secondDemo;

  set setSecondDemo(String secondDemo) {
    _secondDemo = secondDemo;
    notifyListeners();
  }
}