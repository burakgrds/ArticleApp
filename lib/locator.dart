import 'package:article_app/core/repository/articles_repo.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory<ArticlesRepo>(() => ArticlesRepoImpl());
}
