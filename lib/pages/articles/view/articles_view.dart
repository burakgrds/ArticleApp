import 'package:article_app/core/utils/strings.dart';
import 'package:article_app/pages/articles/components/articles_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/repository/article_repository.dart';
import '../bloc/articles_bloc.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArticlesBloc(
        articleRepository: context.read<ArticleRepository>(),
      )..add(const FetchArticles()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            ArticleStrings.articlesTitle,
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ArticlesBloc, ArticlesState>(
          builder: (context, state) {
            if (state is ArticlesLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ArticlesError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.message,
                      style: const TextStyle(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => context.read<ArticlesBloc>().add(
                            const FetchArticles(),
                          ),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            if (state is ArticlesLoaded) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<ArticlesBloc>().add(const FetchArticles());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: state.articles.length,
                    itemBuilder: (context, index) {
                      final article = state.articles[index];
                      return ArticlesCard(article: article);
                    },
                  ),
                ),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
