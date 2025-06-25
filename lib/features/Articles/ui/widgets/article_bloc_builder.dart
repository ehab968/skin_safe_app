import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Articles/data/models/article_model.dart';
import 'package:skin_care_app/features/Articles/logic/cubit/article_cubit.dart';
import 'package:skin_care_app/features/Articles/logic/cubit/article_state.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/article_list_view.dart';
import 'package:skin_care_app/features/Articles/ui/widgets/article_shimmer_loading.dart';

class ArticleBlocBuilder extends StatelessWidget {
  const ArticleBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArticleCubit, ArticleState>(
      buildWhen:
          (previous, current) =>
              current is ArticaleLoading ||
              current is ArticleSuccess ||
              current is ArticleError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoding(),
          success: (articles) {
            return setupSucess(articles);
          },
          error: (apiErrorModel) {
            return Center(child: Text('Error: ${apiErrorModel.message}'));
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  ArticleListView setupSucess(List<ArticleModel> articles) {
    return ArticleListView(articles: articles);
  }

  Widget setupLoding() => const ArticleShimmerLoading();
}
