import 'package:http/http.dart' as http;

class ApiManager {
  static Future<http.Response> getCallApi(var url) async {
    var uri = Uri.parse(url);
    var response = await http.get(uri);

    return response;
  }

  static Future<http.Response> getPostApi(String url,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) async {
    var url = "https://dummyjson.com/products/add";
    var uri = Uri.parse(url);
    final response = await http.post(
      uri,
      //body: json.encode(product.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
    return response;
  }
}
