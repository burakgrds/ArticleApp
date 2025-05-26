import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/repository/article_repository.dart';
import 'package:article_app/pages/articles/bloc/articles_bloc.dart';
import 'package:article_app/pages/articles/view/articles_view.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockArticlesBloc extends MockBloc<ArticlesEvent, ArticlesState>
    implements ArticlesBloc {}

class MockArticleRepository extends Mock implements ArticleRepository {}

void main() {
  late MockArticlesBloc mockArticlesBloc;
  late MockArticleRepository mockArticleRepository;

  setUp(() {
    mockArticlesBloc = MockArticlesBloc();
    mockArticleRepository = MockArticleRepository();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: RepositoryProvider<ArticleRepository>.value(
        value: mockArticleRepository,
        child: BlocProvider<ArticlesBloc>.value(
          value: mockArticlesBloc,
          child: const ArticlesView(),
        ),
      ),
    );
  }

  testWidgets(
    'should show loading indicator when state is loading',
    (WidgetTester tester) async {
      // arrange
      when(() => mockArticlesBloc.state).thenReturn(ArticlesLoading());

      // act
      await tester.pumpWidget(createWidgetUnderTest());

      // assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'should show error message when state is error',
    (WidgetTester tester) async {
      // arrange
      when(() => mockArticlesBloc.state)
          .thenReturn(const ArticlesError(message: 'Error Message'));

      // act
      await tester.pumpWidget(createWidgetUnderTest());

      // assert
      expect(find.text('Error Message'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    },
  );

  testWidgets(
    'should show list of articles when state is loaded',
    (WidgetTester tester) async {
      // arrange
      final articles = [
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

      when(() => mockArticlesBloc.state)
          .thenReturn(ArticlesLoaded(articles: articles));

      // act
      await tester.pumpWidget(createWidgetUnderTest());

      // assert
      expect(find.text('Test Article'), findsOneWidget);
      expect(find.text('Test Author'), findsOneWidget);
    },
  );

  testWidgets(
    'should trigger refresh when pull to refresh',
    (WidgetTester tester) async {
      // arrange
      when(() => mockArticlesBloc.state)
          .thenReturn(ArticlesLoaded(articles: []));

      // act
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.fling(
        find.byType(RefreshIndicator),
        const Offset(0, 300),
        1000,
      );
      await tester.pumpAndSettle();

      // assert
      verify(() => mockArticlesBloc.add(const FetchArticles())).called(1);
    },
  );
}
