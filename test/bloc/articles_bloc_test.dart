import 'package:article_app/core/error/failures.dart';
import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/repository/article_repository.dart';
import 'package:article_app/pages/articles/bloc/articles_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'articles_bloc_test.mocks.dart';

@GenerateMocks([ArticleRepository])
void main() {
  late ArticlesBloc articlesBloc;
  late MockArticleRepository mockArticleRepository;

  setUp(() {
    mockArticleRepository = MockArticleRepository();
    articlesBloc = ArticlesBloc(articleRepository: mockArticleRepository);
  });

  tearDown(() {
    articlesBloc.close();
  });

  test('initial state should be ArticlesInitial', () {
    expect(articlesBloc.state, isA<ArticlesInitial>());
  });

  group('FetchArticles', () {
    final tArticles = [
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
    ];

    blocTest<ArticlesBloc, ArticlesState>(
      'emits [ArticlesLoading, ArticlesLoaded] when FetchArticles is successful',
      build: () {
        when(mockArticleRepository.getArticles())
            .thenAnswer((_) async => Right(tArticles));
        return articlesBloc;
      },
      act: (bloc) => bloc.add(const FetchArticles()),
      expect: () => [
        isA<ArticlesLoading>(),
        isA<ArticlesLoaded>().having(
          (state) => state.articles,
          'articles',
          tArticles,
        ),
      ],
    );

    blocTest<ArticlesBloc, ArticlesState>(
      'emits [ArticlesLoading, ArticlesError] when FetchArticles fails',
      build: () {
        when(mockArticleRepository.getArticles()).thenAnswer(
          (_) async => const Left(NetworkFailure(message: 'Network Error')),
        );
        return articlesBloc;
      },
      act: (bloc) => bloc.add(const FetchArticles()),
      expect: () => [
        isA<ArticlesLoading>(),
        isA<ArticlesError>().having(
          (state) => state.message,
          'message',
          'Network Error',
        ),
      ],
    );
  });
}
