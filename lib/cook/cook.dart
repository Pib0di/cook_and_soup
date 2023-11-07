import 'recipe.dart';

class Cook {
  Recipe recipe;

  Cook({required this.recipe});

  // void prepareProduct() {for (var element in recipe.productList) {}}

  String generalTaste = 'безвкусный';

  void mixProduct() {
    String sweetOrSaltySour(Recipe recipe){
      for (var element in recipe.productList) {
        if (element.tasteSensations.type == "сладкий") {
          return 'сладким';
        } else {
          return 'солено-кислым';
        }
      }
      return 'что произошло???';
    }

    Map<int, String> numSwitch = {};
    for (var element in recipe.productList) {
      int key = element.tasteSensations.index;
      numSwitch.putIfAbsent(key + 1, () => '');
    }
    int sum = 0;
    numSwitch.forEach((key, value) {
      sum += key;
    });
    generalTaste = switch (sum) {
      1 => 'солоеным',
      2 => 'кислым',
      3 => sweetOrSaltySour(recipe),
      4 => 'солено-сладким',
      5 => 'кисло-сладким',
      6 => 'солоено-кисло-сладким',
      _ => 'безвкусным',
    };
  }

  void serveDish() {
    print('\n\nБлюло получилось $generalTaste');
    print(
        'И включает в себя следующие продукты (${recipe.productList.length}шт):\n');
    for (var element in recipe.productList) {
      print("Наименование: ${element.name}");
      print(
          'Способ приготовления: ${element.sliced ? 'нарезано и ' : 'не нарзано и '}${element.fried ? 'обжарено' : 'не обжарено'}');
      print('Свойство вкуса: ${element.tasteSensations.type}\n');
    }
  }
}

