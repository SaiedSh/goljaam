import 'package:flutter/material.dart';
import 'package:goljaam_education/model/api/generated/goljaam.swagger.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<AccessToken> login(
    {required String userName,
    required String password,
    required BuildContext context}) async {
  final api = Goljaam.create();

  final postResult = await api.apiV1AuthenticationStaffLoginPost(
      password: password, userName: userName);
  print(postResult.body);
  print(postResult.error);
  print(userName);
  print(password);

  if (postResult.isSuccessful == true) {
    final response = AccessToken.fromJson(postResult.body!.toJson());
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("accessToken", response.accessToken.toString());
    print(postResult.error);
    if (postResult.body!.accessToken != null) {
    } else {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.error,
        title: 'Oops...',
        text: postResult.error.toString(),
      );
    }
  } else {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.error,
      title: 'Oops...',
      text: postResult.error.toString(),
    );
  }
  final response = AccessToken.fromJson(postResult.body!.toJson());

  return response;
}

// Future<AccessToken> loginOtp({
//   required BuildContext context,
//   required TempUserDto body,
// }) async {
//   print("OTP");
//   final api = Goljaam.create();
//   final postResult = await api.apiV1AuthenticationLoginSignUpValidationPost(
//     body: body,
//   );
//   //print(LoginOtpDto().code);
//   print(postResult.body);
//   print(postResult.error);
//   //postResult.body.token

//   if (postResult.isSuccessful == true) {
//     print("hey im after route");
//     final response = AccessToken.fromJson(postResult.body!.toJson());
//     SharedPreferences sp = await SharedPreferences.getInstance();
//     sp.setString("accessToken", response.accessToken.toString());
//     Navigator.of(context).pushAndRemoveUntil(
//         PageRouteBuilder(
//             pageBuilder: (_, __, ___) => const NavigationScreen(),
//             transitionDuration: const Duration(milliseconds: 500),
//             transitionsBuilder: (_, a, __, c) => FadeTransition(
//                   opacity: a,
//                   child: c,
//                 )),
//         (route) => false);
//   } else {
//     QuickAlert.show(
//       context: context,
//       type: QuickAlertType.error,
//       title: 'Oops...',
//       text: postResult.error.toString(),
//     );
//   }
//   final response = AccessToken.fromJson(postResult.body!.toJson());

//   return response;
// }
