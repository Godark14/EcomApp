import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/authentication_four_screen/models/authentication_four_model.dart';

/// A provider class for the AuthenticationFourScreen.
///
/// This provider manages the state of the AuthenticationFourScreen, including the
/// current authenticationFourModelObj
class AuthenticationFourProvider extends ChangeNotifier {
  AuthenticationFourModel authenticationFourModelObj =
      AuthenticationFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
