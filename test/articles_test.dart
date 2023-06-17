import 'package:article_app/core/model/articles_model.dart';
import 'package:article_app/core/utils/strings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test("Check if results are not null", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final model = articlesModelFromJson(response.body);
    expect(model.results, isNotEmpty);
  });

  test("Check if results are list", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final results = articlesModelFromJson(response.body).results;
    expect(results, isList);
  });

  test("Check if source is New York Times", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final results = articlesModelFromJson(response.body).results;
    expect(results.first.source, "New York Times");
  });

  test("Check if response body is ArticlesModel", () async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));
    final model = articlesModelFromJson(response.body);
    expect(model, isInstanceOf<ArticlesModel>());
  });
}
