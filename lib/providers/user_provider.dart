import 'package:findjob/models/model_user.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  late ModelUser _modelUser;

  ModelUser get user => _modelUser;

  set user(ModelUser newUser) {
    _modelUser = newUser;
    notifyListeners();
  }
}
