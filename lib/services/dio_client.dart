import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final dio = Dio();
  dio.options = BaseOptions(
    baseUrl: 'https://www.themealdb.com/api/json/v1/1',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    sendTimeout: const Duration(seconds: 10),
    headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
  );
  dio.interceptors.add(
  InterceptorsWrapper(
  onRequest: (options, handler) {
    print('🚀 REQUEST: ${options.method} ${options.path}');
    print('📋 Headers: ${options.headers}');
    if (options.data !=null) {
       print('📦 Data: ${options.data}');
    }
    handler.next(options);
  },
   onResponse: (response, handler) {
        print('✅ RESPONSE: ${response.statusCode} ${response.requestOptions.path}');
        print('📄 Data: ${response.data.toString().length > 200 ? 
               '${response.data.toString().substring(0, 200)}...' : 
               response.data}');
        handler.next(response);
      },
      onError: (error, handler) {
        print('❌ ERROR: ${error.message}');
        print('🔍 Path: ${error.requestOptions.path}');
        if (error.response != null) {
          print('📊 Status: ${error.response?.statusCode}');
          print('📝 Data: ${error.response?.data}');
        }
        handler.next(error);
      },
  ),
  );
  return dio;
}
