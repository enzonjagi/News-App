// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NewsApiService implements NewsApiService {
  //ignore: missing_default_value_for_parameter
  _NewsApiService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://newsapi.org';
  }

  final Dio _dio;

  String baseUrl;

  @override
  //ignore: invalid_override
  Future<HttpResponse<BreakingNewsResponseModel>> getBreakingNewsArticles({
    // ignore: type_annotate_public_apis
    required apiKey,
    // ignore: type_annotate_public_apis
    required country,
    // ignore: type_annotate_public_apis
    required category,
    // ignore: type_annotate_public_apis
    required page,
    // ignore: type_annotate_public_apis
    required pageSize,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      // ignore: unnecessary_raw_strings
      r'apiKey': apiKey,
      // ignore: unnecessary_raw_strings
      r'country': country,
      // ignore: unnecessary_raw_strings
      r'category': category,
      // ignore: unnecessary_raw_strings
      r'page': page,
      // ignore: unnecessary_raw_strings
      r'pageSize': pageSize
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/top-headlines',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = BreakingNewsResponseModel.fromJson(_result.data);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }
}
