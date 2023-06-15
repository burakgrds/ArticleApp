import 'package:article_app/pages/article_details/model/article_details_model.dart';
import 'package:flutter/foundation.dart';

import '../../../core/view_model/loading.viewmodel.dart';
import '../repository/article_details_repo.dart';

class ArticleDetailsViewModel extends LoadingViewModel {
  ArticleDetailsViewModel({
    required this.repo,
  });

  final ArticleDetailsRepo repo;

  ArticleDetailsModel get homeModel => _homeModel;

  set homeModel(ArticleDetailsModel homeModel) {
    _homeModel = homeModel;
    notifyListeners();
  }

  Future<void> fetchData() async {
    try {
      isLoading = true;

      _homeModel = await repo.fetchData();
    } catch (exception) {
      debugPrint('Error in _fetchData : ${exception.toString()}');
    }

    isLoading = false;
    notifyListeners();
  }

  // INTERNALS
  ArticleDetailsModel _homeModel = ArticleDetailsModel();
}
