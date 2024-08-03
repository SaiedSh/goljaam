import 'package:flutter/material.dart';
import 'package:goljaam_education/model/api/generated/goljaam.models.swagger.dart';

class GoljaamCourseListState extends ChangeNotifier {
  static List<CourseDto> courses = [];
  getCourseList(List<CourseDto> newPackage) {
    courses.clear();
    courses.addAll(newPackage);
    notifyListeners();
  }
}
