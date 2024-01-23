import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/authentication_one_screen/models/authentication_one_model.dart';/// A provider class for the AuthenticationOneScreen.
///
/// This provider manages the state of the AuthenticationOneScreen, including the
/// current authenticationOneModelObj

// ignore_for_file: must_be_immutable
class AuthenticationOneProvider extends ChangeNotifier {TextEditingController firstNameController = TextEditingController();

AuthenticationOneModel authenticationOneModelObj = AuthenticationOneModel();

@override void dispose() { super.dispose(); firstNameController.dispose(); } 
 }
