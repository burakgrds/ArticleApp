import 'package:article_app/pages/article_details/view/article_details_view.dart';
import 'package:flutter/material.dart';

import '../view_model/articles_view_model.dart';

class ArticlesCard extends StatelessWidget {
  final ArticlesViewModel model;
  final int index;
  const ArticlesCard({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    var now_1w = DateTime.now().subtract(const Duration(days: 7));

    return now_1w.isBefore(
            DateTime.parse(model.articlesModel.results[index].publishedDate!))
        ? Card(
            color: Colors.grey,
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(model.articlesModel.results[index]
                        .media!.first.mediaMetadata!.first.url!),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ArticleDetailsView(
                        index: index,
                      ),
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  title: Text(model.articlesModel.results[index].title ?? ""),
                  subtitle:
                      Text(model.articlesModel.results[index].byline ?? ""),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        model.articlesModel.results[index].publishedDate ?? "",
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ))
        : Container();
  }
}
