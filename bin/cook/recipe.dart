import 'dart:math';

import 'product.dart';

class Recipe{
  Recipe({required this.productList}){
    //добавление случайных свойств продукту
    final random = Random();
   for (var element in productList) {
     element.fried = random.nextBool();
     element.sliced = random.nextBool();
   }
  }

  late List<Product> productList = [];
  // late Map<Product, Action> recipe;
}