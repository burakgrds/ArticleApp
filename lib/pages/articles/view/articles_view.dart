import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/loading/loading.component.dart';
import '../view_model/articles_view_model.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({Key? key}) : super(key: key);

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
    //final model = context.watch<ArticlesViewModel>().articlesModel;
    return Consumer<ArticlesViewModel>(
      builder: (_, model, child) {
        if (model.isLoading) {
          return child ?? const SizedBox();
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Articles",
              style: TextStyle(color: Colors.blue),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: model.articlesModel.items.length,
                itemBuilder: (context, index) {
                  return Card(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      child: ListTile(
                        onTap: () {},
                        title: Text(model.articlesModel.items[index].title!),
                        subtitle: Text(model.articlesModel.items[index].desc!),
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                model.articlesModel.items[index].imageUrl!)),
                      ));
                }),
          ),
        );
      },
      child: const LoadingComponent(),
    );
  }
}
