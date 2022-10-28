import 'package:flutter/foundation.dart';

class counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void add() {
    _count++;
    notifyListeners();
  }

  void subtract() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void multiply() {
    _count = _count * 2;
    notifyListeners();
  }

  void nextpage() {
    notifyListeners();
  }
}
