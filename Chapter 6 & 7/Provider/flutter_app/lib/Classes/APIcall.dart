import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'dart:convert';

class apicall with ChangeNotifier {
  Map value;
  List a;
  String imageurl = "Hello", author, title, article;
  void getData() async {
    await Future.delayed(Duration(seconds: 3));

    Response response = await get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=68af4ad19b174d68bd046dce016d29c1");
    value = jsonDecode(response.body);
    a = value['articles'];
    imageurl = a[0]['urlToImage'];
//      author=a[0]['author'];

    notifyListeners();
  }
}
