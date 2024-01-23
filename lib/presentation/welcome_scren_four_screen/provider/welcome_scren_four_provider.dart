import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/welcome_scren_four_screen/models/welcome_scren_four_model.dart';/// A provider class for the WelcomeScrenFourScreen.
///
/// This provider manages the state of the WelcomeScrenFourScreen, including the
/// current welcomeScrenFourModelObj

// ignore_for_file: must_be_immutable
class WelcomeScrenFourProvider extends ChangeNotifier {WelcomeScrenFourModel welcomeScrenFourModelObj = WelcomeScrenFourModel();

@override void dispose() { super.dispose(); } 
 }
