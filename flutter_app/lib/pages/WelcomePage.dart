import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Classes/APIcall.dart';
import '../Classes/PlaceHolderAPi.dart';
import 'DetailedNews.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Map data;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<apicall>(
          create: (context) => apicall(),
        ),
        ChangeNotifierProvider<jsonPlaceHoder>(
          create: (context) => jsonPlaceHoder(),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Top Headlines"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Consumer<apicall>(
                builder: (context, apicall, child) {
                  apicall.getData();
                  apicall.article.forEach((news) {
                    print(news.title);
                  });
                  if (apicall.article != null) {
                    return Expanded(
                      child: ListView.builder(
                          itemCount: apicall.article.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: ListTile(
                                leading: Icon(Icons.arrow_forward_ios),
                                title: Text(
                                  apicall.article[index].title,
                                  style: TextStyle(fontSize: 24),
                                ),
                                trailing: InkWell(
                                  child: Icon(Icons.launch),
                                  onTap: () {
                                    Navigator.pushNamed(context, '/detailed',
                                        arguments: {
                                          'title': apicall.article[index].title,
                                          'url': apicall.article[index].url,
                                          'urlImage':
                                              apicall.article[index].urlImage,
                                          'content':
                                              apicall.article[index].content
                                        });
                                  },
                                ),
                              ),
                            );
                          }),
                    );
                  }
                  return Text("Please wait");
                },
              ),
            ),
//
          ],
        ),
      ),
    );
  }
}
