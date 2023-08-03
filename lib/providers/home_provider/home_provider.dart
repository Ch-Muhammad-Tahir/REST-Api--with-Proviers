import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:to_do_list/services/api_manager.dart';
import 'package:to_do_list/utils/api_constants.dart';

import '../../models/product.dart';
import '../../widgets/custom_snack_bar.dart';

class HomeProvider extends ChangeNotifier {
  List<Product> products = [];
  void getdataFromApi(BuildContext context) {
    ApiManager.getCallApi(ApiConstant.apiUrl).then((response) {
      //print(response.body);
      final body = response.body;
      final json = jsonDecode(body);
      if (json["products"] is List) {
        var jsonArrayList = json["products"] as List;
        for (var element in jsonArrayList) {
          products.add(Product.fromJson(element));
        }
      }

      // products.forEach((element) {
      //   print("Prince ${element.price}");
      // });
      notifyListeners();
    }).catchError((onError) {
      CustomSnackBar.showToast(context, "Api Not Found");
      print(onError);
    });
  }
}
