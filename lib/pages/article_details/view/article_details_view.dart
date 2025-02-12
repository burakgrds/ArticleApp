import 'package:article_app/core/utils/strings.dart';
import 'package:article_app/pages/article_details/components/article_details_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/components/loading/loading.component.dart';
import '../../articles/view_model/articles_view_model.dart';

class ArticleDetailsView extends StatefulWidget {
  final int index;

  const ArticleDetailsView({super.key, required this.index});

  @override
  State<ArticleDetailsView> createState() => _ArticleDetailsViewState();
}

class _ArticleDetailsViewState extends State<ArticleDetailsView> {
  @override
  void initState() {
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
            backgroundColor: Colors.grey.withValues(alpha: 0.1),
            title: const Text(
              ArticleStrings.articleDetailsTitle,
              style: TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
                child: ArticleDetailsCard(model: model, index: widget.index)),
          ),
        );
      },
      child: const LoadingComponent(),
    );
  }
}
