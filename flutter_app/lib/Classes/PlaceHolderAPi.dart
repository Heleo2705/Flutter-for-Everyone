import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'dart:convert';

class jsonPlaceHoder with ChangeNotifier {
  Map datafromjson;
  void getDataJson() async {
    Response response =
        await get("https://jsonplaceholder.typicode.com/todos/1");
    datafromjson = jsonDecode(response.body);
    notifyListeners();
  }
}
