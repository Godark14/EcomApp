import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/splash_screen_three_screen/models/splash_screen_three_model.dart';

/// A provider class for the SplashScreenThreeScreen.
///
/// This provider manages the state of the SplashScreenThreeScreen, including the
/// current splashScreenThreeModelObj
class SplashScreenThreeProvider extends ChangeNotifier {
  SplashScreenThreeModel splashScreenThreeModelObj = SplashScreenThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
