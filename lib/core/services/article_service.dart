import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:article_app/core/utils/logger.dart';
import '../model/articles_dto.dart';
import '../utils/constants.dart';

class ArticleService {
  final http.Client _client;

  ArticleService({http.Client? client}) : _client = client ?? http.Client();

  Future<ArticlesDto> getArticles({
    int page = 1,
    int itemsPerPage = 10,
  }) async {
    final offset = (page - 1) * itemsPerPage;
    final uri = Uri.parse(
      '${ApiConstants.baseUrl}/svc/mostpopular/v2/viewed/7.json'
      '?api-key=${ApiConstants.apiKey}'
      '&offset=$offset'
      '&limit=$itemsPerPage',
    );

    try {
      AppLogger.info('Fetching articles from API');
      final response = await _client.get(uri);

      if (response.statusCode == 200) {
        AppLogger.info('Successfully fetched articles from API');
        return ArticlesDto.fromJson(json.decode(response.body));
      } else {
        AppLogger.warning(
            'API request failed with status: ${response.statusCode}');
        throw Exception('Failed to load articles');
      }
    } on SocketException {
      AppLogger.error('No internet connection');
      throw Exception('No internet connection');
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error occurred', e, stackTrace);
      throw Exception('Error fetching articles: $e');
    }
  }
}
