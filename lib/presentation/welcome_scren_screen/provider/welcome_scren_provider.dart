import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/welcome_scren_screen/models/welcome_scren_model.dart';

/// A provider class for the WelcomeScrenScreen.
///
/// This provider manages the state of the WelcomeScrenScreen, including the
/// current welcomeScrenModelObj
class WelcomeScrenProvider extends ChangeNotifier {
  WelcomeScrenModel welcomeScrenModelObj = WelcomeScrenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
