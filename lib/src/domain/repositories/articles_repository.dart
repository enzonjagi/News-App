import 'package:news_app/src/core/params/articles_request.dart';
import 'package:news_app/src/core/resources/data_state.dart';
import 'package:news_app/src/domain/entities/article.dart';

abstract class ArticlesRepository {
  Future<DataState<List<Article>>> getBreakingNewsArticles(
    ArticlesRequestParams params,
  );
}
