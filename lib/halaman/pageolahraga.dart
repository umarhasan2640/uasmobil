import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/apiolahraga.dart';
import 'package:flutter_application_1/model/modelarticle.dart';
import 'package:flutter_application_1/komponen/CustomListTile.dart';

class HalamanOlahraga extends StatefulWidget {
  @override
  _HalamanOlahraga createState() => _HalamanOlahraga();
}

class _HalamanOlahraga extends State<HalamanOlahraga> {
  ServicesSport client = ServicesSport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Container(
          child: FutureBuilder(
            future: client.getArticle(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
              if (snapshot.hasData) {
                List<Article> articles = snapshot.data;
                return ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) =>
                        customListTile(articles[index], context));
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ));
  }
}
