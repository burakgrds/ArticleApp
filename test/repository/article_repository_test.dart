import 'package:article_app/core/cache/articles_cache.dart';
import 'package:article_app/core/error/failures.dart';
import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/repository/article_repository.dart';
import 'package:article_app/core/services/article_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'article_repository_test.mocks.dart';

@GenerateMocks([ArticleService, ArticlesCache])
void main() {
  late ArticleRepository repository;
  late MockArticleService mockArticleService;
  late MockArticlesCache mockArticlesCache;

  setUp(() {
    mockArticleService = MockArticleService();
    mockArticlesCache = MockArticlesCache();
    repository =
        ArticleRepository(mockArticleService, cache: mockArticlesCache);
  });

  group('getArticles', () {
    final tArticlesDto = ArticlesDto(results: [
      ResultsDto(
        title: 'Test Article',
        abstract: 'Test Abstract',
        publishedDate: '2024-03-20',
        byline: 'Test Author',
        media: [
          MediaDto(
            mediaMetadata: [
              MediaMetadataDto(url: 'https://test.com/image.jpg'),
            ],
          ),
        ],
      ),
    ]);

    test(
      'should return remote data when the call to remote data source is successful',
      () async {
        // arrange
        when(mockArticleService.getArticles())
            .thenAnswer((_) async => tArticlesDto);
        when(mockArticlesCache.cacheArticles(tArticlesDto))
            .thenAnswer((_) async {});

        // act
        final result = await repository.getArticles();

        // assert
        verify(mockArticleService.getArticles());
        verify(mockArticlesCache.cacheArticles(tArticlesDto));
        expect(result, equals(Right(tArticlesDto.results)));
      },
    );

    test(
      'should return cached data when the call to remote data source fails',
      () async {
        // arrange
        when(mockArticleService.getArticles())
            .thenThrow(Exception('Server Error'));
        when(mockArticlesCache.getCachedArticles())
            .thenAnswer((_) async => tArticlesDto);

        // act
        final result = await repository.getArticles();

        // assert
        verify(mockArticleService.getArticles());
        verify(mockArticlesCache.getCachedArticles());
        expect(result, equals(Right(tArticlesDto.results)));
      },
    );

    test(
      'should return NetworkFailure when there is no internet and no cached data',
      () async {
        // arrange
        when(mockArticleService.getArticles())
            .thenThrow(Exception('No internet'));
        when(mockArticlesCache.getCachedArticles())
            .thenAnswer((_) async => null);

        // act
        final result = await repository.getArticles();

        // assert
        verify(mockArticleService.getArticles());
        verify(mockArticlesCache.getCachedArticles());
        expect(
          result,
          equals(const Left(NetworkFailure(message: 'No internet connection'))),
        );
      },
    );
  });
}
