import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/error/failures.dart';
import '../../../core/model/articles_dto.dart';
import '../../../core/repository/article_repository.dart';

part 'articles_event.dart';
part 'articles_state.dart';

class ArticlesBloc extends Bloc<ArticlesEvent, ArticlesState> {
  final ArticleRepository articleRepository;
  int _currentPage = 1;
  static const int _itemsPerPage = 10;

  ArticlesBloc({required this.articleRepository}) : super(ArticlesInitial()) {
    on<FetchArticles>(_onFetchArticles);
    on<LoadMoreArticles>(_onLoadMoreArticles);
  }

  Future<void> _onFetchArticles(
    FetchArticles event,
    Emitter<ArticlesState> emit,
  ) async {
    emit(ArticlesLoading());
    _currentPage = 1;

    final result = await articleRepository.getArticles(
      page: _currentPage,
      itemsPerPage: _itemsPerPage,
    );

    result.fold(
      (failure) => emit(ArticlesError(message: _mapFailureToMessage(failure))),
      (articles) => emit(ArticlesLoaded(articles: articles)),
    );
  }

  Future<void> _onLoadMoreArticles(
    LoadMoreArticles event,
    Emitter<ArticlesState> emit,
  ) async {
    if (state is! ArticlesLoaded) return;

    final currentState = state as ArticlesLoaded;
    _currentPage++;

    final result = await articleRepository.getArticles(
      page: _currentPage,
      itemsPerPage: _itemsPerPage,
    );

    result.fold(
      (failure) => emit(ArticlesError(message: _mapFailureToMessage(failure))),
      (newArticles) => emit(
        ArticlesLoaded(
          articles: [...currentState.articles, ...newArticles],
        ),
      ),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure) {
      case NetworkFailure _:
        return 'No internet connection';
      case ServerFailure _:
        return 'Server error occurred';
      case CacheFailure _:
        return 'Cache error occurred';
      case _:
        return 'Unexpected error occurred';
    }
  }
}
