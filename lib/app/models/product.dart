class Product {
  Product({
    required String id,
    required String title,
    required String description,
  })  : _id = id,
        _title = title,
        _description = description;

  String _id = "";
  String _title = "";
  String _description = "";

  set id(String id) => _id = id;
  String get id => _id;

  set title(String title) => _title = title;
  String get title => _title;

  set description(String description) => _description = description;
  String get description => _description;
}
