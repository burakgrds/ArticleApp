part of 'article_details_bloc.dart';

abstract class ArticleDetailsEvent extends Equatable {
  const ArticleDetailsEvent();

  @override
  List<Object?> get props => [];
}

class LoadArticleDetails extends ArticleDetailsEvent {
  final ResultsDto article;

  const LoadArticleDetails(this.article);

  @override
  List<Object?> get props => [article];
}
