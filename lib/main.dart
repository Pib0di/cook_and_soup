import 'dart:math';
import 'dart:io';
import 'package:cook_and_soup/cook/cook.dart';
import 'package:cook_and_soup/cook/product.dart';
import 'package:cook_and_soup/cook/recipe.dart';

import 'binary_sort.dart';

extension BinSort<T> on List<int> {
  List<int> binarySort(){
    binaryInsertionSort(this);
    return this;
  }
}

void main(List<String> arguments) {

  ///бинарная сортировка
  List<int> list = [2, 3, 1, 7477, 46, 46, 29 , 24,];

  print('было:');
  for (var element in list) {
    stdout.write("$element ");
  }

  list.binarySort();

  print('\nстало:');
  for (var element in list) {
    stdout.write("$element ");
  }
  ///...........

  List<Product> productList = createRandomProduct();
  Recipe recipe = Recipe(productList: productList);
  Cook cook = Cook(recipe: recipe);
  cook.mixProduct();
  cook.serveDish();

}

//создание списка продуктов с случайными вкусами и названиями
List<Product> createRandomProduct(){
  final random = Random();
  var numberProducts = random.nextInt(10);

  late List<Product> productList;
  productList = List.generate(
    numberProducts,
        (index) => Product(
        name: name[random.nextInt(name.length)],
        tasteSensations: TasteSensations.values[random.nextInt(TasteSensations.values.length)]),
  );

  name[random.nextInt(name.length)];

  return productList;
}


List<String> name = [
  'Огурец',
  'Помидор',
  'Перец',
  'Салат',
  'Вишня',
  'Клубника',
  'Соус',
  'Шоколад',
  'Стейк',
];