import 'package:financial_app/src/modules/core/http_client/http_client.dart';
import 'package:uno/uno.dart';

class UnoHttpClientImpl implements HttpClient {
  final Uno uno;

  const UnoHttpClientImpl(this.uno);

  @override
  Future<HttpClientResponse> get(String path, {Map<String, dynamic> query = const {}}) async {
    final response =  await uno.get(path, params: transformQuery(query));
    return HttpClientResponse(statusCode: response.status, rawData: response.data);
  }

  @override
  Future<HttpClientResponse> post(String path, {data, Map<String, dynamic> query = const {}}) async {
    final response =  await uno.post(path, data: data, params: transformQuery(query));
    return HttpClientResponse(statusCode: response.status, rawData: response.data);
  }

  @override
  Future<HttpClientResponse> put(String path, {data, Map<String, dynamic> query = const {}}) async {
    final response =  await uno.put(path, data: data, params: transformQuery(query));
    return HttpClientResponse(statusCode: response.status, rawData: response.data);
  }

  @override
  Future<HttpClientResponse> patch(String path, {data, Map<String, dynamic> query = const {}}) async {
    final response =  await uno.patch(path, data: data, params: transformQuery(query));
    return HttpClientResponse(statusCode: response.status, rawData: response.data);
  }

  @override
  Future<HttpClientResponse> delete(String path, {Map<String, dynamic> query = const {}}) async {
    final response =  await uno.delete(path, params: transformQuery(query));
    return HttpClientResponse(statusCode: response.status, rawData: response.data);
  }

  Map<String, String> transformQuery(Map<String, dynamic> value) =>
      value.map((key, value) => MapEntry(key, value.toString()));
}