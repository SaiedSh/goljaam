import 'package:flutter/material.dart';
import 'package:goljaam_education/model/api/generated/goljaam.swagger.dart';
import 'package:goljaam_education/model/services/token.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

Future<ApiResult> changeTaskPost(
    {String? id,
    UserTaskStatus? status,
    String? doneDescription,
    required BuildContext context}) async {
  final api = Goljaam.create(interceptors: [TokenInterceptor('accessToken')]);

  final postResult = await api.apiV1UserTaskChangeTaskPost(
      doneDescription: doneDescription, id: id, status: status);
  print(postResult.body);
  print(postResult.error);
  print(status);
  print(id);

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
