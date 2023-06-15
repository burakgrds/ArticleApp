import 'package:article_app/pages/articles/repository/articles_repo.dart';
import 'package:flutter/foundation.dart';

import '../../../core/view_model/loading.viewmodel.dart';
import '../model/articles_model.dart';

class ArticlesViewModel extends LoadingViewModel {
  ArticlesViewModel({
    required this.repo,
  });

  final ArticlesRepo repo;

  ArticlesModel get articlesModel => _articlesModel;

  set articlesModel(ArticlesModel articlesModel) {
    _articlesModel = articlesModel;
    notifyListeners();
  }

  Future<void> fetchData() async {
    try {
      isLoading = true;

      _articlesModel = await repo.fetchData();
    } catch (exception) {
      debugPrint('Error in _fetchData : ${exception.toString()}');
    }

    isLoading = false;
    notifyListeners();
  }

  // INTERNALS
  ArticlesModel _articlesModel = ArticlesModel();
}
