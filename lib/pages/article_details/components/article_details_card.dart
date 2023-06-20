import 'package:flutter/material.dart';
import '../../articles/view_model/articles_view_model.dart';

class ArticleDetailsCard extends StatelessWidget {
  final ArticlesViewModel model;
  final int index;
  const ArticleDetailsCard(
      {super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    var now_1w = DateTime.now().subtract(const Duration(days: 7));

    return now_1w.isBefore(
            DateTime.parse(model.articlesModel.results[index].publishedDate!))
        ? Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.articlesModel.results[index].section ?? "",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white60),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      model.articlesModel.results[index].media!.first
                          .mediaMetadata![2].url!,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    model.articlesModel.results[index].title ?? "",
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(model.articlesModel.results[index].abstract ?? ""),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(model.articlesModel.results[index].byline ?? ""),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      Text(
                        model.articlesModel.results[index].publishedDate ?? "",
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ))
        : Container();
  }
}


/*
ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(model.articlesModel.results[index].media!
                    .first.mediaMetadata!.first.url!),
              ),
              trailing: const Icon(Icons.chevron_right),
              title: Text(model.articlesModel.results[index].title ?? ""),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.articlesModel.results[index].byline ?? ""),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                        ),
                        Text(
                          model.articlesModel.results[index].publishedDate ??
                              "",
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ]),
            ) */