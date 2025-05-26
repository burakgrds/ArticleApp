import 'package:article_app/core/cache/articles_cache.dart';
import 'package:article_app/core/repository/articles_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => sharedPreferences);
  locator.registerLazySingleton(() => http.Client());

  // Cache
  locator.registerLazySingleton<ArticlesCache>(
      () => ArticlesCacheImpl(sharedPreferences: locator()));

  // Repository
  locator.registerFactory<ArticlesRepo>(
    () => ArticlesRepoImpl(
      client: locator(),
      cache: locator(),
    ),
  );
}
