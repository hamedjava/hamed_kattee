import 'package:flutter/material.dart';

class IndexCardState extends ChangeNotifier {
  static List<String> indexCard = [];

  void addToList(String value) {
    indexCard.add(value);
    notifyListeners();
  }

  void removeFromList(String value) {
    indexCard.removeWhere((element) => element == value);
    notifyListeners();
  }
}
