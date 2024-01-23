import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/welcome_scren_one_screen/models/welcome_scren_one_model.dart';

/// A provider class for the WelcomeScrenOneScreen.
///
/// This provider manages the state of the WelcomeScrenOneScreen, including the
/// current welcomeScrenOneModelObj
class WelcomeScrenOneProvider extends ChangeNotifier {
  WelcomeScrenOneModel welcomeScrenOneModelObj = WelcomeScrenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
