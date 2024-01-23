import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/home_screen_one_three_screen/models/home_screen_one_three_model.dart';

/// A provider class for the HomeScreenOneThreeScreen.
///
/// This provider manages the state of the HomeScreenOneThreeScreen, including the
/// current homeScreenOneThreeModelObj
class HomeScreenOneThreeProvider extends ChangeNotifier {
  HomeScreenOneThreeModel homeScreenOneThreeModelObj =
      HomeScreenOneThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
