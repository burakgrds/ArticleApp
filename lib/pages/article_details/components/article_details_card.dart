import 'package:flutter/material.dart';
import '../../../core/model/articles_dto.dart';

class ArticleDetailsCard extends StatelessWidget {
  final ResultsDto article;

  const ArticleDetailsCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (article.media.isNotEmpty)
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                article.media.first.mediaMetadata.first.url ?? '',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 300,
                    color: Colors.grey[300],
                    child: const Icon(
                      Icons.error_outline,
                      size: 50,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title ?? 'No Title',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                Text(
                  article.abstract ?? 'No Abstract',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        article.byline ?? 'No Author',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Text(
                      article.publishedDate ?? 'No Date',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                if (article.section != null) ...[
                  const SizedBox(height: 16),
                  Text(
                    'Section: ${article.section}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
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