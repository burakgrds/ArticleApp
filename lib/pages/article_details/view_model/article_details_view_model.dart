import 'package:article_app/core/model/articles_model.dart';

import '../../../core/view_model/loading_view_model.dart';

class ArticleDetailsViewModel extends LoadingViewModel {
  ArticleDetailsViewModel();

  ArticlesModel get articlesModel => _articlesModel;

  set articlesModel(ArticlesModel articlesModel) {
    _articlesModel = articlesModel;
    notifyListeners();
  }

  // INTERNALS
  ArticlesModel _articlesModel = ArticlesModel();
}
