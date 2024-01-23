import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/welcome_scren_three_screen/models/welcome_scren_three_model.dart';

/// A provider class for the WelcomeScrenThreeScreen.
///
/// This provider manages the state of the WelcomeScrenThreeScreen, including the
/// current welcomeScrenThreeModelObj
class WelcomeScrenThreeProvider extends ChangeNotifier {
  WelcomeScrenThreeModel welcomeScrenThreeModelObj = WelcomeScrenThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
