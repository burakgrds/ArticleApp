part of 'articles_bloc.dart';

abstract class ArticlesEvent extends Equatable {
  const ArticlesEvent();

  @override
  List<Object?> get props => [];
}

class FetchArticles extends ArticlesEvent {
  const FetchArticles();
}

class LoadMoreArticles extends ArticlesEvent {
  const LoadMoreArticles();
}
