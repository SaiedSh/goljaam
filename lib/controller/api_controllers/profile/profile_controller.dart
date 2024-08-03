import 'package:flutter/material.dart';
import 'package:goljaam_education/controller/providers/api_providers/profile_state.dart';
import 'package:goljaam_education/model/api/generated/goljaam.swagger.dart';
import 'package:goljaam_education/model/services/token.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

Future<UserDtoApiResult> profileGet({required BuildContext context}) async {
  final api = Goljaam.create(interceptors: [TokenInterceptor('accessToken')]);

  final postResult = await api.apiV1UserGetUserProfileGet();
  print(postResult.body);
  print(postResult.error);

  if (postResult.isSuccessful == true) {
    // SharedPreferences sp = await SharedPreferences.getInstance();
    // sp.setString("accessToken", sp.accessToken.toString());
    print(postResult.error);
    if (postResult.body!.data != null) {
      print('Hereleeee');
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
      title: 'Oops.....',
      text: postResult.error.toString(),
    );
  }
  final response = UserDtoApiResult.fromJson(postResult.body!.toJson());
  context
      .read<ProfileState>()
      .getClientProfile(newClientProfile: response.data!);

  return response;
}

Future<ApiResult> profilePost({
  required BuildContext context,
  String? userName,
  String? phoneNumber,
  String? email,
  String? code,
  Sex? gender,
  String? fname,
  String? lname,
  String? imageUrl,
  String? id,
  List<int>? ImageFile,
}) async {
  final api = Goljaam.create(interceptors: [TokenInterceptor('accessToken')]);

  final postResult = await api.apiV1UserUpdateProfilePost(
      lname: lname,
      phoneNumber: phoneNumber,
      userName: userName,
      ImageFile: ImageFile,
      code: code,
      email: email,
      fname: fname,
      gender: gender,
      id: id,
      imageUrl: imageUrl);
  print(postResult.body);
  print(postResult.error);

  if (postResult.isSuccessful == true) {
    print(postResult.error);
    if (postResult.body != null) {
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
  final response = ApiResult.fromJson(postResult.body!.toJson());

  return response;
}
