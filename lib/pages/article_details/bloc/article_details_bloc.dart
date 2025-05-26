import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/model/articles_dto.dart';

part 'article_details_event.dart';
part 'article_details_state.dart';

class ArticleDetailsBloc
    extends Bloc<ArticleDetailsEvent, ArticleDetailsState> {
  ArticleDetailsBloc() : super(ArticleDetailsInitial()) {
    on<LoadArticleDetails>(_onLoadArticleDetails);
  }

  void _onLoadArticleDetails(
    LoadArticleDetails event,
    Emitter<ArticleDetailsState> emit,
  ) async {
    try {
      emit(ArticleDetailsLoading());
      await Future.delayed(
          const Duration(milliseconds: 300)); // Simüle edilmiş yükleme
      emit(ArticleDetailsLoaded(article: event.article));
    } catch (e) {
      emit(ArticleDetailsError(message: e.toString()));
    }
  }
}
