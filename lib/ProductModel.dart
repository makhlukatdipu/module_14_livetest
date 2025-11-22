class ProductModel {
  int? id;
  String? title;
  String? description;
  int? calories;

  ProductModel({this.id, this.title, this.description, this.calories});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    calories = json['calories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['calories'] = this.calories;
    return data;
  }
}
