import 'package:flutter/services.dart';

import '../model/article_details_model.dart';

abstract class ArticleDetailsRepo {
  Future<ArticleDetailsModel> fetchData();
}

class ArticleDetailsRepoImpl extends ArticleDetailsRepo {
  @override
  Future<ArticleDetailsModel> fetchData() async {
    await Future.delayed(const Duration(milliseconds: 1800));

    final resp = await rootBundle.loadString('assets/data/third_screen.json');
    return articleDetailsModelFromJson(resp);
  }
}
