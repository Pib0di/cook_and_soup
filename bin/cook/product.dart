
enum TasteSensations {
  salt('соленый'),
  sour('кислый'),
  sweet('сладкий');

  final String type;
  const TasteSensations(this.type);
}

class Product with Action {
  late TasteSensations tasteSensations;
  late String name;

  Product({
    required this.tasteSensations,
    this.name = 'неопознанный продукт',
  });
}

mixin Action {
  bool sliced = false;
  bool fried = false;
}
