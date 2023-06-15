import 'package:article_app/pages/articles/repository/articles_repo.dart';
import 'package:get_it/get_it.dart';

import 'core/services/navigation.service.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());

  locator.registerFactory<ArticlesRepo>(() => ArticlesRepoImpl());
}
