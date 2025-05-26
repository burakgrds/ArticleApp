part of 'article_details_bloc.dart';

abstract class ArticleDetailsState extends Equatable {
  const ArticleDetailsState();

  @override
  List<Object?> get props => [];
}

class ArticleDetailsInitial extends ArticleDetailsState {}

class ArticleDetailsLoading extends ArticleDetailsState {}

class ArticleDetailsLoaded extends ArticleDetailsState {
  final ResultsDto article;

  const ArticleDetailsLoaded({required this.article});

  @override
  List<Object?> get props => [article];
}

class ArticleDetailsError extends ArticleDetailsState {
  final String message;

  const ArticleDetailsError({required this.message});

  @override
  List<Object?> get props => [message];
}
