import 'package:article_app/pages/article_details/view/article_details_view.dart';
import 'package:flutter/material.dart';
import '../../../core/model/articles_dto.dart';

class ArticlesCard extends StatelessWidget {
  final ResultsDto article;
  const ArticlesCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    var now_1w = DateTime.now().subtract(const Duration(days: 7));

    return now_1w.isBefore(DateTime.parse(article.publishedDate ?? ''))
        ? article.media.isEmpty
            ? Container()
            : InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ArticleDetailsView(
                      article: article,
                    ),
                  ),
                ),
                child: Card(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(12),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          article.media.first.mediaMetadata.first.url ?? '',
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      title: Text(article.title ?? ""),
                      subtitle: Text(article.byline ?? ""),
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
                          ),
                          Text(
                            article.publishedDate ?? "",
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
