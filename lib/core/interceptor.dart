
import 'package:dio/dio.dart';
import 'package:exem/core/routing/routes.dart';
import 'package:exem/core/secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../data/repository/auth_repository.dart';
import '../main.dart';

class AuthInterceptor extends Interceptor {
  final Dio _dio = Dio();

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    final jwt = await SecureStorage.getToken();
    if (jwt != null) {
      options.headers["Authorization"] = "Bearer $jwt";
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      final result = await navigatorKey.currentContext!
          .read<AuthRepository>()
          .refreshToken();
      if (result) {
        final jwt = await SecureStorage.getToken();
        err.requestOptions.headers["Authorization"] = "Bearer $jwt";
        return handler.resolve(
          await _dio.request(
            err.requestOptions.baseUrl + err.requestOptions.path,
            options: Options(
              method: err.requestOptions.method,
              headers: err.requestOptions.headers,
            ),
            data: err.requestOptions.data,
            queryParameters: err.requestOptions.queryParameters,
          ),
        );
      } else {
        await navigatorKey.currentContext!.read<AuthRepository>().logout();
        navigatorKey.currentContext!.go(Routes.login);
        return handler.reject(err);
      }
    }
  }
}
//
//
// import 'package:dio/dio.dart';
// import 'package:exem/core/routing/routes.dart';
// import 'package:exem/core/secure_storage.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
//
// import '../data/repository/auth_repository.dart';
// import '../main.dart';
//
// class AuthInterceptor extends Interceptor {
//   final Dio _dio = Dio();
//
//   // ⚠️ Faqat test uchun: tokenni qo'l bilan yozamiz
//   final String testToken =
//       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwaG9uZV9udW1iZXIiOiIrOTM5MzEzOTAzIiwianRpIjoiZTc0MDdjYmYtODhkOC00NmViLWFiNGQtYTlhYWQ2MjdlMTA0IiwidXNlcmlkIjoiNyIsImV4cCI6MTg0Mzc1NjQ5MSwiaXNzIjoibG9jYWxob3N0IiwiYXVkIjoiYXVkaWVuY2UifQ.G0J-jtLPMzK0s3mxxmmiJyhP3rW7Up0S2BMcfhkJlIw';
//
//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     // Asl kod: final jwt = await SecureStorage.getToken();
//     // Test uchun tokenni qo'l bilan qo'shamiz
//     options.headers["Authorization"] = "Bearer $testToken";
//     handler.next(options);
//   }
//
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401) {
//       final result = await navigatorKey.currentContext!
//           .read<AuthRepository>()
//           .refreshToken();
//       if (result) {
//         final jwt = await SecureStorage.getToken();
//         err.requestOptions.headers['Authorization'] = 'Bearer $jwt';
//         return handler.resolve(
//           await _dio.request(
//             err.requestOptions.baseUrl + err.requestOptions.path,
//             options: Options(
//               method: err.requestOptions.method,
//               headers: err.requestOptions.headers,
//             ),
//             data: err.requestOptions.data,
//             queryParameters: err.requestOptions.queryParameters,
//           ),
//         );
//       } else {
//         await navigatorKey.currentContext!.read<AuthRepository>().logout();
//         navigatorKey.currentContext!.go(Routes.home);
//         return handler.reject(err);
//       }
//     }
//   }
// }
