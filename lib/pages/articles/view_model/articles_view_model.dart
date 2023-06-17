import 'package:article_app/core/repository/articles_repo.dart';
import 'package:flutter/foundation.dart';

import '../../../core/view_model/loading_view_model.dart';
import '../../../core/model/articles_model.dart';

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
      articlesModel.results
          .sort((a, b) => b.publishedDate!.compareTo(a.publishedDate!));
    } catch (exception) {
      debugPrint('Error in _fetchData : ${exception.toString()}');
    }

    isLoading = false;
    notifyListeners();
  }

  // Internals
  ArticlesModel _articlesModel = ArticlesModel();
}
