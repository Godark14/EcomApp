import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/authentication_three_screen/models/authentication_three_model.dart';

/// A provider class for the AuthenticationThreeScreen.
///
/// This provider manages the state of the AuthenticationThreeScreen, including the
/// current authenticationThreeModelObj
class AuthenticationThreeProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  AuthenticationThreeModel authenticationThreeModelObj =
      AuthenticationThreeModel();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
  }
}
