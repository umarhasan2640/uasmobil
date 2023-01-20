import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/model/modelarticle.dart';

class ServicesSport {
  final endPointUrl = "newsapi.org";
  final client = http.Client();
  Future<List<Article>> getArticle() async {
    final queryParameters = {
      'category': 'sports',
      'country': 'id',
      'apiKey': '84bb2ddc009f4af49f9049041f0cef9c'
    };
    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
