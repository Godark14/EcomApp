import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/authentication_two_screen/models/authentication_two_model.dart';

/// A provider class for the AuthenticationTwoScreen.
///
/// This provider manages the state of the AuthenticationTwoScreen, including the
/// current authenticationTwoModelObj
class AuthenticationTwoProvider extends ChangeNotifier {
  AuthenticationTwoModel authenticationTwoModelObj = AuthenticationTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
