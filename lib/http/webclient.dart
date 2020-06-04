import 'package:bytebankpersistence/http/interceptors/logging_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

final Client client = HttpClientWithInterceptor.build(interceptors: [
  LoggingInterceptor(),
]);
const String baseUrl = 'http://172.18.0.1:8080/transactions';

