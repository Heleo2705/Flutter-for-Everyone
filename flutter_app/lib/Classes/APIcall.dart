import 'package:flutter_app/Classes/newsArticle.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'dart:convert';

class apicall with ChangeNotifier {
  Map value;
  List a;
  List<newsArticle> article = List();
  void getData() async {
    await Future.delayed(Duration(seconds: 3));

    Response response = await get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=68af4ad19b174d68bd046dce016d29c1");
    value = jsonDecode(response.body);
    a = value['articles'];
    for (int i = 0; i < a.length; i++) {
      article.add(newsArticle(
          a[i]['title'], a[i]['url'], a[i]['content'], a[i]['urlToImage']));
    }

    notifyListeners();
  }
}
