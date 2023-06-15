import 'package:flutter/services.dart';

import '../model/articles_model.dart';

abstract class ArticlesRepo {
  Future<ArticlesModel> fetchData();
}

class ArticlesRepoImpl extends ArticlesRepo {
  @override
  Future<ArticlesModel> fetchData() async {
    await Future.delayed(const Duration(milliseconds: 1800));

    final resp = await rootBundle.loadString('assets/data/first_screen.json');
    return articlesModelFromJson(resp);
  }
}
