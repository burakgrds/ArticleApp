import 'dart:convert';
import 'package:article_app/core/model/articles_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ArticlesCache {
  Future<bool> cacheArticles(ArticlesDto articles);
  Future<ArticlesDto?> getCachedArticles();
  Future<bool> clearCache();
}

class ArticlesCacheImpl implements ArticlesCache {
  final SharedPreferences sharedPreferences;
  static const String cachedArticlesKey = 'CACHED_ARTICLES';

  ArticlesCacheImpl({required this.sharedPreferences});

  @override
  Future<bool> cacheArticles(ArticlesDto articles) async {
    return await sharedPreferences.setString(
      cachedArticlesKey,
      json.encode(articles.toJson()),
    );
  }

  @override
  Future<ArticlesDto?> getCachedArticles() async {
    final jsonString = sharedPreferences.getString(cachedArticlesKey);
    if (jsonString != null) {
      return ArticlesDto.fromJson(json.decode(jsonString));
    }
    return null;
  }

  @override
  Future<bool> clearCache() async {
    return await sharedPreferences.remove(cachedArticlesKey);
  }
}
