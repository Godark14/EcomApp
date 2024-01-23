import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/splash_screen_two_screen/models/splash_screen_two_model.dart';

/// A provider class for the SplashScreenTwoScreen.
///
/// This provider manages the state of the SplashScreenTwoScreen, including the
/// current splashScreenTwoModelObj
class SplashScreenTwoProvider extends ChangeNotifier {
  SplashScreenTwoModel splashScreenTwoModelObj = SplashScreenTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
