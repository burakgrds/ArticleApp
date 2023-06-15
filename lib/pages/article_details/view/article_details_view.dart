import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/article_details_view_model.dart';

class ArticleDetailsView extends StatefulWidget {
  const ArticleDetailsView({Key? key}) : super(key: key);

  @override
  State<ArticleDetailsView> createState() => _ArticleDetailsViewState();
}

class _ArticleDetailsViewState extends State<ArticleDetailsView> {
  late ArticleDetailsViewModel viewModel;

  @override
  void initState() {
    viewModel = Provider.of<ArticleDetailsViewModel>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ArticleDetailsViewModel>(
      builder: (_, model, child) {
        if (model.isLoading) {
          return child ?? const SizedBox();
        }

        return Scaffold(
          body: Container(),
        );
      },
    );
  }
}
