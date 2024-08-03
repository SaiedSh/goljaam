import 'package:flutter/material.dart';
import 'package:goljaam_education/model/api/generated/goljaam.enums.swagger.dart';
import 'package:goljaam_education/model/api/generated/goljaam.models.swagger.dart';
import 'package:goljaam_education/model/global/global.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskWidget extends StatefulWidget {
  final Function()? doneOnClick;
  final Function()? cancellOnClick;
  final Function()? descOnClick;
  final String title;
  final String desc;
  final UserTaskDto dto;

  const TaskWidget({
    super.key,
    required this.title,
    required this.dto,
    this.doneOnClick,
    this.cancellOnClick,
    required this.desc,
    this.descOnClick,
  });

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool visivleTwo = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            boxShadow: [
              BoxShadow(color: primaryColor, spreadRadius: 2, blurRadius: 5)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: widget.cancellOnClick,
                        child: Container(
                          child: widget.dto.status == UserTaskStatus.canceled
                              ? Icon(
                                  Icons.close,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.close,
                                  color: Colors.grey.shade600,
                                ),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color:
                                  widget.dto.status == UserTaskStatus.canceled
                                      ? Colors.red
                                      : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1,
                                    spreadRadius: 0.5),
                              ],
                              shape: BoxShape.circle),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                      child: Text(
                        maxLines: 2,
                        widget.title,
                        style: GoogleFonts.lalezar(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            visivleTwo = !visivleTwo;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(blurRadius: 0.5, spreadRadius: 0.1)
                              ]),
                          child: Text(
                            textAlign: TextAlign.center,
                            '. . .     ',
                            style: GoogleFonts.lalezar(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [],
                ),
                InkWell(
                    onTap: widget.doneOnClick,
                    child: Container(
                      child: widget.dto.status == UserTaskStatus.canceled
                          ? Icon(
                              Icons.check,
                              color: Colors.grey.shade600,
                            )
                          : Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: widget.dto.status == UserTaskStatus.done
                            ? Colors.green
                            : Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              spreadRadius: 0.5)
                        ],
                        shape: BoxShape.circle,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Visibility(
                visible: visivleTwo,
                child: Text(
                  widget.desc,
                  style: GoogleFonts.lalezar(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
