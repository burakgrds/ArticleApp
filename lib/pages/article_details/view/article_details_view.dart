import 'package:article_app/core/utils/strings.dart';
import 'package:article_app/pages/article_details/components/article_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/model/articles_dto.dart';
import '../bloc/article_details_bloc.dart';

class ArticleDetailsView extends StatefulWidget {
  final ResultsDto article;

  const ArticleDetailsView({super.key, required this.article});

  @override
  State<ArticleDetailsView> createState() => _ArticleDetailsViewState();
}

class _ArticleDetailsViewState extends State<ArticleDetailsView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ArticleDetailsBloc()..add(LoadArticleDetails(widget.article)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            ArticleStrings.articleDetailsTitle,
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.chevron_left,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ArticleDetailsBloc, ArticleDetailsState>(
          builder: (context, state) {
            if (state is ArticleDetailsLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ArticleDetailsError) {
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
                      onPressed: () => context
                          .read<ArticleDetailsBloc>()
                          .add(LoadArticleDetails(widget.article)),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            if (state is ArticleDetailsLoaded) {
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<ArticleDetailsBloc>()
                      .add(LoadArticleDetails(widget.article));
                },
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: ArticleDetailsCard(article: state.article),
                      ),
                    ),
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
