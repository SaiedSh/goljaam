import 'package:flutter/material.dart';
import 'package:goljaam_education/model/api/generated/goljaam.enums.swagger.dart';
import 'package:goljaam_education/model/api/generated/goljaam.models.swagger.dart';

class TaskState extends ChangeNotifier {
  static List<UserTaskDto> tasks = [];
  static List<bool> flags = [];
  getTasks({required List<UserTaskDto> value}) {
    tasks = value;
    notifyListeners();
  }

  getControllers() {
    flags = [];
    for (var i = 0; i < tasks.length; i++) {
      flags.add(tasks[i].status == UserTaskStatus.done);
    }
  }

  doneOneTask({required int index}) {
    tasks[index].status = UserTaskStatus.done;
    getControllers();

    notifyListeners();
  }

  cancelOneTask({required int index}) {
    tasks[index].status = UserTaskStatus.canceled;

    notifyListeners();
  }
}
