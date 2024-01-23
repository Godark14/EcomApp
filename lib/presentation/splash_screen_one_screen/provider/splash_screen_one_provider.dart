import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/splash_screen_one_screen/models/splash_screen_one_model.dart';/// A provider class for the SplashScreenOneScreen.
///
/// This provider manages the state of the SplashScreenOneScreen, including the
/// current splashScreenOneModelObj

// ignore_for_file: must_be_immutable
class SplashScreenOneProvider extends ChangeNotifier {SplashScreenOneModel splashScreenOneModelObj = SplashScreenOneModel();

@override void dispose() { super.dispose(); } 
 }
