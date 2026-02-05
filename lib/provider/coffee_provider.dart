import 'package:cafe/model/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeProvider extends ChangeNotifier {
  CoffeeModel? selectedCoffee;
  void selectCoffee(CoffeeModel coffee) {
    selectedCoffee = coffee;
    notifyListeners();
  }
}
