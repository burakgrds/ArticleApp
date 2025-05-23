import 'dart:convert';

import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/utils/strings.dart';
import 'package:http/http.dart' as http;

abstract class ArticlesRepo {
  Future<ArticlesDto> fetchData();
}

class ArticlesRepoImpl extends ArticlesRepo {
  @override
  Future<ArticlesDto> fetchData() async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));

    return ArticlesDto.fromJson(jsonDecode(response.body));
  }
}
