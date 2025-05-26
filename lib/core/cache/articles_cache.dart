import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/articles_dto.dart';
import '../utils/logger.dart';

class ArticlesCache {
  SharedPreferences? _prefs;
  static const String _cacheKey = 'cached_articles';

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> cacheArticles(ArticlesDto articles) async {
    if (_prefs == null) {
      await init();
    }

    try {
      AppLogger.info('Caching articles');
      final jsonString = json.encode(articles.toJson());
      await _prefs?.setString(_cacheKey, jsonString);
      AppLogger.info('Articles cached successfully');
    } catch (e, stackTrace) {
      AppLogger.error('Error caching articles', e, stackTrace);
    }
  }

  Future<ArticlesDto?> getCachedArticles() async {
    if (_prefs == null) {
      await init();
    }

    try {
      AppLogger.info('Getting cached articles');
      final jsonString = _prefs?.getString(_cacheKey);
      if (jsonString != null) {
        AppLogger.info('Found cached articles');
        return ArticlesDto.fromJson(json.decode(jsonString));
      }
      AppLogger.info('No cached articles found');
      return null;
    } catch (e, stackTrace) {
      AppLogger.error('Error getting cached articles', e, stackTrace);
      return null;
    }
  }
}
