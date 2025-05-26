import 'dart:convert';
import 'dart:io';

import 'package:article_app/core/cache/articles_cache.dart';
import 'package:article_app/core/error/failures.dart';
import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/utils/logger.dart';
import 'package:article_app/core/utils/strings.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class ArticlesRepo {
  Future<Either<Failure, ArticlesDto>> fetchData();
}

class ArticlesRepoImpl extends ArticlesRepo {
  final http.Client client;
  final ArticlesCache cache;

  ArticlesRepoImpl({required this.client, required this.cache});

  @override
  Future<Either<Failure, ArticlesDto>> fetchData() async {
    try {
      AppLogger.info('Fetching articles from API');
      final response = await client
          .get(Uri.parse(ArticleStrings.apiUrl + ArticleStrings.apiKey));

      if (response.statusCode == 200) {
        AppLogger.info('Successfully fetched articles from API');
        final articles = ArticlesDto.fromJson(jsonDecode(response.body));
        await cache.cacheArticles(articles);
        return Right(articles);
      } else {
        AppLogger.warning(
            'API request failed with status: ${response.statusCode}');
        // Try to get cached data if available
        final cachedArticles = await cache.getCachedArticles();
        if (cachedArticles != null) {
          AppLogger.info('Returning cached articles');
          return Right(cachedArticles);
        }
        return Left(ServerFailure(
            message: 'Server error occurred',
            code: response.statusCode.toString()));
      }
    } on SocketException {
      AppLogger.error('No internet connection');
      // Try to get cached data if no internet
      final cachedArticles = await cache.getCachedArticles();
      if (cachedArticles != null) {
        AppLogger.info('Returning cached articles due to no internet');
        return Right(cachedArticles);
      }
      return const Left(NetworkFailure(message: 'No internet connection'));
    } catch (e, stackTrace) {
      AppLogger.error('Unexpected error occurred', e, stackTrace);
      final cachedArticles = await cache.getCachedArticles();
      if (cachedArticles != null) {
        AppLogger.info('Returning cached articles due to error');
        return Right(cachedArticles);
      }
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
