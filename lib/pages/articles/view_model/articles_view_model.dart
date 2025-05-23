import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/repository/articles_repo.dart';
import 'package:flutter/foundation.dart';

import '../../../core/view_model/loading_view_model.dart';

class ArticlesViewModel extends LoadingViewModel {
  ArticlesViewModel({
    required this.repo,
  });

  final ArticlesRepo repo;

  ArticlesDto get articlesDto => _articlesDto;

  set articlesDto(ArticlesDto articlesDto) {
    _articlesDto = articlesDto;
    notifyListeners();
  }

  Future<void> fetchData() async {
    try {
      isLoading = true;

      _articlesDto = await repo.fetchData();
      articlesDto.results
          .sort((a, b) => b.publishedDate!.compareTo(a.publishedDate!));
    } catch (exception) {
      debugPrint('Error in _fetchData : ${exception.toString()}');
    }

    isLoading = false;
    notifyListeners();
  }

  // Internals
  ArticlesDto _articlesDto = ArticlesDto();
}
