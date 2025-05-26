import 'package:article_app/core/utils/strings.dart';
import 'package:article_app/pages/articles/components/articles_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/loading/loading.component.dart';
import '../view_model/articles_view_model.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({super.key});

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView> {
  late ArticlesViewModel viewModel;

  @override
  void initState() {
    viewModel = Provider.of<ArticlesViewModel>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ArticlesViewModel>(
      builder: (_, model, child) {
        if (model.isLoading) {
          return child ?? const SizedBox();
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              ArticleStrings.articlesTitle,
              style: TextStyle(color: Colors.black87),
            ),
            centerTitle: true,
          ),
          body: model.errorMessage != null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        model.errorMessage!,
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => model.fetchData(),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: () => model.fetchData(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: model.articlesDto.results.length,
                      itemBuilder: (context, index) {
                        return ArticlesCard(model: model, index: index);
                      },
                    ),
                  ),
                ),
        );
      },
      child: const LoadingComponent(),
    );
  }
}
