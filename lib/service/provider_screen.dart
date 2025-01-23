import 'package:flutter/material.dart';

class ProviderScreen extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }

  void decreament() {
    count--;
    notifyListeners();
  }
}
