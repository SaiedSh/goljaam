import 'package:flutter/material.dart';
import 'package:goljaam_education/controller/providers/api_providers/task_state.dart';
import 'package:goljaam_education/model/api/generated/goljaam.swagger.dart';
import 'package:goljaam_education/model/services/token.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

Future<UserTaskDtoListApiResult> taskDatePost(
    {required DateTime date, required BuildContext context}) async {
  final api = Goljaam.create(interceptors: [TokenInterceptor('accessToken')]);

  final postResult = await api.apiV1UserTaskUserTaskListGet(date: date);
  print(postResult.body);
  print(postResult.error);
  print(date);

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
  final response = UserTaskDtoListApiResult.fromJson(postResult.body!.toJson());
  context.read<TaskState>().getTasks(value: response.data!);

  return response;
}
