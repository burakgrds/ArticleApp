import 'package:article_app/core/repository/article_repository.dart';
import 'package:article_app/core/services/article_service.dart';
import 'package:article_app/pages/articles/view/articles_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/bloc/app_bloc_observer.dart';
import 'core/cache/articles_cache.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // BLoC Observer'ı ayarla
  Bloc.observer = AppBlocObserver();

  final articleService = ArticleService();
  final articlesCache = ArticlesCache();
  await articlesCache.init();

  final articleRepository =
      ArticleRepository(articleService, cache: articlesCache);

  runApp(MyApp(articleRepository: articleRepository));
}

class MyApp extends StatelessWidget {
  final ArticleRepository articleRepository;

  const MyApp({super.key, required this.articleRepository});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: articleRepository,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        title: 'Articles',
        home: const ArticlesView(),
      ),
    );
  }
}
