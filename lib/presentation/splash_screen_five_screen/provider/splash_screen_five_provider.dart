import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/splash_screen_five_screen/models/splash_screen_five_model.dart';

/// A provider class for the SplashScreenFiveScreen.
///
/// This provider manages the state of the SplashScreenFiveScreen, including the
/// current splashScreenFiveModelObj
class SplashScreenFiveProvider extends ChangeNotifier {
  SplashScreenFiveModel splashScreenFiveModelObj = SplashScreenFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
