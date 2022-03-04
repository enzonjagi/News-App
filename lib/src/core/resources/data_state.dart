// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';

/*A generic DataState class? what’s the use of that?
We’re communicating with remote API service,
every request we make to the server we get response.. 
but what if something goes wrong? A network error occur?
Here comes the wrapper class,
which wraps our entire network response with DataState
so we can have two states
either the response is a successful
or failed with error of type DioError.*/
abstract class DataState<T> {
  final T data;
  final DioError error;

  //ignore: missing_default_value_for_parameter
  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError error) : super(error: error);
}
