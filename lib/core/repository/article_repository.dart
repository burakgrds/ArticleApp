import 'package:article_app/core/cache/articles_cache.dart';
import 'package:article_app/core/error/failures.dart';
import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/services/article_service.dart';
import 'package:dartz/dartz.dart';

class ArticleRepository {
  final ArticleService _articleService;
  final ArticlesCache? cache;

  ArticleRepository(this._articleService, {this.cache});

  Future<Either<Failure, List<ResultsDto>>> getArticles({
    int page = 1,
    int itemsPerPage = 10,
  }) async {
    try {
      final articlesDto = await _articleService.getArticles(
        page: page,
        itemsPerPage: itemsPerPage,
      );

      if (page == 1) {
        await cache?.cacheArticles(articlesDto);
      }

      return Right(articlesDto.results);
    } catch (e) {
      if (page == 1 && cache != null) {
        final cachedArticles = await cache!.getCachedArticles();
        if (cachedArticles != null) {
          return Right(cachedArticles.results);
        }
      }
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }
}
