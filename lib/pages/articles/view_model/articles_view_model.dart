import 'package:article_app/core/model/articles_dto.dart';
import 'package:article_app/core/repository/articles_repo.dart';
import 'package:flutter/foundation.dart';

import '../../../core/view_model/loading_view_model.dart';

class ArticlesViewModel extends LoadingViewModel {
  ArticlesViewModel({
    required this.repo,
  });

  final ArticlesRepo repo;
  String? errorMessage;

  ArticlesDto get articlesDto => _articlesDto;

  set articlesDto(ArticlesDto articlesDto) {
    _articlesDto = articlesDto;
    notifyListeners();
  }

  Future<void> fetchData() async {
    try {
      isLoading = true;
      errorMessage = null;

      final result = await repo.fetchData();

      result.fold(
        (failure) => errorMessage = failure.message,
        (data) {
          _articlesDto = data;
          _articlesDto.results
              .sort((a, b) => b.publishedDate!.compareTo(a.publishedDate!));
        },
      );
    } catch (exception) {
      errorMessage = 'An unexpected error occurred';
      debugPrint('Error in fetchData: ${exception.toString()}');
    }

    isLoading = false;
    notifyListeners();
  }

  // Internals
  ArticlesDto _articlesDto = ArticlesDto();
}
