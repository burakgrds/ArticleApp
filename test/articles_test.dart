import 'dart:convert';

import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/utils/strings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test("Check if results are not null", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final model = ArticlesDto.fromJson(jsonDecode(response.body));
    expect(model.results, isNotEmpty);
  });

  test("Check if results are list", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final results = ArticlesDto.fromJson(jsonDecode(response.body)).results;
    expect(results, isList);
  });

  test("Check if source is New York Times", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final results = ArticlesDto.fromJson(jsonDecode(response.body)).results;
    expect(results.first.source, "New York Times");
  });

  test("Check if response body is ArticlesModel", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final model = ArticlesDto.fromJson(jsonDecode(response.body));
    expect(model, isInstanceOf<ArticlesDto>());
  });

  test("Check if response status code is 200", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));

    expect(response.statusCode, 200); //200:0K
  });
}
