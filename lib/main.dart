import 'package:article_app/pages/article_details/view_model/article_details_view_model.dart';
import 'package:article_app/core/repository/articles_repo.dart';
import 'package:article_app/pages/articles/view/articles_view.dart';
import 'package:article_app/pages/articles/view_model/articles_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // INIT SERVICE LOCATOR
  setupLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ArticlesViewModel(repo: locator<ArticlesRepo>()),
        ),
        ChangeNotifierProvider(
          create: (_) => ArticleDetailsViewModel(),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Articles',
      home: ArticlesView(),
    );
  }
}
