import 'package:flutter/material.dart';

// esta es la clase servidora
class Contador extends ChangeNotifier{
  int _count = 0;

  int getCounter(){
    return _count;
  }

  void setZero(){
    _count = 0;
    notifyListeners(); // para que todos los listeners se enteren del 0
  }

  void incrementCounter(){
    _count++;
    notifyListeners();
  }
}