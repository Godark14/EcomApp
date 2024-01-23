import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/splash_screen_four_screen/models/splash_screen_four_model.dart';

/// A provider class for the SplashScreenFourScreen.
///
/// This provider manages the state of the SplashScreenFourScreen, including the
/// current splashScreenFourModelObj
class SplashScreenFourProvider extends ChangeNotifier {
  SplashScreenFourModel splashScreenFourModelObj = SplashScreenFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
