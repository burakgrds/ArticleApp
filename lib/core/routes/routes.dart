import 'package:article_app/pages/article_details/view/article_details_view.dart';
import 'package:article_app/pages/articles/view/articles_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NamedRoute.articles:
        return MaterialPageRoute<void>(
          builder: (context) => const ArticlesView(),
          settings: settings,
        );

      case NamedRoute.articleDetails:
        return MaterialPageRoute<void>(
          builder: (context) => const ArticleDetailsView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute<void>(
          builder: (_) => _UndefinedView(name: settings.name),
          settings: settings,
        );
    }
  }
}

class _UndefinedView extends StatelessWidget {
  const _UndefinedView({Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Something went wrong for $name'),
      ),
    );
  }
}

class NamedRoute {
  NamedRoute._();

  static const String articles = '/articles';
  static const String articleDetails = '/article_details';
}
