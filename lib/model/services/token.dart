import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenInterceptor implements Interceptor {
  TokenInterceptor(this.token);

  final String token;

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString("accessToken").toString();
    final request =
        applyHeader(chain.request, 'Authorization', 'Bearer $token');
    return chain.proceed(request);
  }
}

// import 'dart:async';

// import 'package:chopper/chopper.dart';
// import 'package:chopper/chopper.dart';
// import 'package:dio/dio.dart';
// import 'package:dio/dio.dart';
// import 'package:goljaam_education/providers/token/token_state.dart';

// class TokenInterceptor extends Interceptor {
//   final AuthProvider authProvider;

//   TokenInterceptor(this.authProvider);

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     final token = authProvide.token;
//     if (token != null) {
//       options.headers["Authorization"] = "Bearer $token";
//     }
//     super.onRequest(options, handler);
//   }

//   @override
//   FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) {
//     // TODO: implement intercept
//     throw UnimplementedError();
//   }
// }

// import 'package:dio/dio.dart';
// import 'package:goljaam_education/providers/token/token_state.dart';

// class TokenInterceptor extends Interceptor {
//   final AuthProvider authProvider;

//   TokenInterceptor(this.authProvider);

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     final token = authProvider.token;
//     if (token != null) {
//       options.headers["Authorization"] = "Bearer $token";
//     }
//     super.onRequest(options, handler);
//   }
// }
