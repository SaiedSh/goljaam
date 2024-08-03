import 'package:flutter/material.dart';
import 'package:goljaam_education/controller/api_controllers/task_controller/change_task_controller.dart';
import 'package:goljaam_education/controller/api_controllers/task_controller/task_controller.dart';
import 'package:goljaam_education/controller/providers/api_providers/task_state.dart';
import 'package:goljaam_education/model/api/generated/goljaam.enums.swagger.dart';
import 'package:goljaam_education/model/components/task_widget.dart';
import 'package:goljaam_education/model/global/global.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime dateTime = DateTime.now();
  @override
  void initState() {
    super.initState();
    taskDatePost(context: context, date: dateTime);
    print(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              DateTime.now().toPersianDateStr(showDayStr: true),
              style: GoogleFonts.lalezar(fontSize: 23, color: primaryColor),
            ),
            Text(
                dateTime.year.toString() +
                    " / " +
                    dateTime.month.toString() +
                    " / " +
                    dateTime.day.toString(),
                style: GoogleFonts.lalezar(
                    fontSize: 20, color: Colors.grey.shade600)),
            SizedBox(
              height: 50,
            ),
            Consumer<TaskState>(
                builder: (context, value, child) => Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 50,
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: TaskState.tasks.length,
                            itemBuilder: (context, index) => TaskWidget(
                                  desc: TaskState.tasks[index].taskDescription
                                      .toString(),
                                  dto: TaskState.tasks[index],
                                  cancellOnClick: () {
                                    if (TaskState.tasks[index].status !=
                                        UserTaskStatus.canceled) {
                                      changeTaskPost(
                                              context: context,
                                              status: UserTaskStatus.canceled,
                                              id: TaskState.tasks[index].id)
                                          .then(context
                                              .read<TaskState>()
                                              .cancelOneTask(index: index));
                                    }
                                  },
                                  doneOnClick: () {
                                    if (TaskState.tasks[index].status !=
                                        UserTaskStatus.done) {
                                      changeTaskPost(
                                              context: context,
                                              status: UserTaskStatus.done,
                                              id: TaskState.tasks[index].id)
                                          .then(context
                                              .read<TaskState>()
                                              .doneOneTask(index: index));
                                    }
                                  },
                                  title: TaskState.tasks[index].taskTitle!,
                                )),
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}
