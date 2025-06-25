import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skin_care_app/features/Articles/data/repo/article_repo.dart';
import 'package:skin_care_app/features/Articles/logic/cubit/article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  ArticleCubit(this.articleRepo) : super(const ArticleState.initial());
  final ArticleRepo articleRepo;
  Future<void> getAllArticles() async {
    emit(const ArticleState.loading());
    final response = await articleRepo.getAllArticles();
    // عشان لو قفلت الكيوبت و هو لسه بيحمل البيانات هيعملك ايرور فا بتقفله
    if (isClosed) return;
    response.when(
      success: (articles) => emit(ArticleState.success(articles)),
      failure: (apiErrorModel) => emit(ArticleState.error(apiErrorModel)),
    );
  }
}
