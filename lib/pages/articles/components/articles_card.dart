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
            DateTime.parse(model.articlesDto.results[index].publishedDate!))
        ? model.articlesDto.results[index].media.isEmpty
            ? Container()
            : InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailsView(
                      index: index,
                    ),
                  ),
                ),
                child: Card(
                    child: Column(
<<<<<<< HEAD
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(12),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(model.articlesModel.results[index]
                            .media!.first.mediaMetadata!.first.url!),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      title:
                          Text(model.articlesModel.results[index].title ?? ""),
                      subtitle:
                          Text(model.articlesModel.results[index].byline ?? ""),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6),
                      padding: const EdgeInsets.all(6),
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      alignment: Alignment.centerRight,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.calendar_month,
                          ),
                          const SizedBox(
                            width: 5,
=======
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.all(12),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(model
                                .articlesDto
                                .results[index]
                                .media
                                .first
                                .mediaMetadata
                                .first
                                .url!),
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          title: Text(
                              model.articlesDto.results[index].title ?? ""),
                          subtitle: Text(
                              model.articlesDto.results[index].byline ?? ""),
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
                                model.articlesDto.results[index]
                                        .publishedDate ??
                                    "",
                                style: const TextStyle(color: Colors.white),
                              )
                            ],
>>>>>>> d49799afd9f8991de0071345724eff3dfbd7440c
                          ),
                          Text(
                            model.articlesModel.results[index].publishedDate ??
                                "",
                          )
                        ],
                      ),
                    )
                  ],
                )),
              )
        : Container();
  }
}
