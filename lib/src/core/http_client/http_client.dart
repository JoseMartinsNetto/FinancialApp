abstract class HttpClient {
  Future<HttpClientResponse> get(String path, {Map<String, dynamic> query = const {}});

  Future<HttpClientResponse> delete(String path, {Map<String, dynamic> query = const {}});

  Future<HttpClientResponse> post(String path,
      {dynamic data, Map<String, dynamic> query = const {}});

  Future<HttpClientResponse> put(String path,
      {dynamic data, Map<String, dynamic> query = const {}});

  Future<HttpClientResponse> patch(String path,
      {dynamic data, Map<String, dynamic> query = const {}});
}

class HttpClientResponse {
  Map? data;
  dynamic rawData;
  int statusCode;

  HttpClientResponse({this.data, required this.statusCode, required this.rawData});

  get isSuccess => statusCode >= 200 && statusCode <= 299;

  @override
  String toString() {
    return 'HttpClientResponse{data: $data, statusCode: $statusCode}';
  }
}

class HttpClientError implements Exception {
  HttpClientResponse? response;
  HttpErrorType type;
  dynamic error;

  HttpClientError({
    this.response,
    this.type = HttpErrorType.other,
    this.error,
  });

  @override
  String toString() {
    if (response != null) {
      return """HttpClientError:
      --> HttpClientResponse:
          -->${response?.toString()}
      --> HttpErrorType:
          ${type.toString()}
      --> Error:
          ${error.toString()}
      """;
    }

    return '';
  }
}

enum HttpErrorType { connectionTimeout, receiveTimeout, badResponse, cancel, other }

enum HttpCode {
  success(200),
  created(201),
  noContent(204),
  badRequest(400),
  unauthorized(401),
  forbidden(403),
  notFound(404),
  conflict(409),
  internalServerError(500),
  serviceUnavailable(503),
  gatewayTimeout(504),
  unknown(0);

  final int value;

  const HttpCode(this.value);

  static HttpCode fromValue(int value) =>
      HttpCode.values.firstWhere((e) => e.value == value, orElse: () => HttpCode.unknown);
}
