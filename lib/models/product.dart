class Product {
  String title = "";
  String description = "";
  String price = "";
  String thumbnail = "";
  Product();
  Product.fromJson(Map<String, dynamic> json) {
    if (json["title"] is String || json["title"] is int) {
      title = json["title"].toString();
    }
    if (json["description"] is String || json["description"] is int) {
      description = json["description"]..toString();
    }
    if (json["price"] is String || json["price"] is int) {
      price = json["price"].toString();
    }
    if (json["thumbnail"] is String || json["thumbnail"] is int) {
      thumbnail = json["thumbnail"].toString();
    }
  }
}
