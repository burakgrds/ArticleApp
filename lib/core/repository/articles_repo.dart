import 'package:article_app/core/utils/strings.dart';
import 'package:http/http.dart' as http;
import '../model/articles_model.dart';

abstract class ArticlesRepo {
  Future<ArticlesModel> fetchData();
}

class ArticlesRepoImpl extends ArticlesRepo {
  @override
  Future<ArticlesModel> fetchData() async {
    final response = await http
        .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));

    return articlesModelFromJson(response.body);
  }
}
