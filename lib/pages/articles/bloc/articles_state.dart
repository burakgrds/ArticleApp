part of 'articles_bloc.dart';

abstract class ArticlesState extends Equatable {
  const ArticlesState();

  @override
  List<Object?> get props => [];
}

class ArticlesInitial extends ArticlesState {}

class ArticlesLoading extends ArticlesState {}

class ArticlesLoaded extends ArticlesState {
  final List<ResultsDto> articles;

  const ArticlesLoaded({required this.articles});

  @override
  List<Object?> get props => [articles];
}

class ArticlesError extends ArticlesState {
  final String message;

  const ArticlesError({required this.message});

  @override
  List<Object?> get props => [message];
}
