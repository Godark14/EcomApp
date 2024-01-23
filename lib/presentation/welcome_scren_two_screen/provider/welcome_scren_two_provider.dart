import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/welcome_scren_two_screen/models/welcome_scren_two_model.dart';

/// A provider class for the WelcomeScrenTwoScreen.
///
/// This provider manages the state of the WelcomeScrenTwoScreen, including the
/// current welcomeScrenTwoModelObj
class WelcomeScrenTwoProvider extends ChangeNotifier {
  WelcomeScrenTwoModel welcomeScrenTwoModelObj = WelcomeScrenTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
