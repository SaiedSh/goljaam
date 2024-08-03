import 'package:flutter/material.dart';
import 'package:goljaam_education/model/api/generated/goljaam.models.swagger.dart';

class ProfileState extends ChangeNotifier {
  static UserDto? clientProfile;
  getClientProfile({required UserDto newClientProfile}) {
    clientProfile = newClientProfile;
    notifyListeners();
  }
}
