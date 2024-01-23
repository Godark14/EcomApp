import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/home_screen_one_screen/models/home_screen_one_model.dart';

/// A provider class for the HomeScreenOneScreen.
///
/// This provider manages the state of the HomeScreenOneScreen, including the
/// current homeScreenOneModelObj
class HomeScreenOneProvider extends ChangeNotifier {
  HomeScreenOneModel homeScreenOneModelObj = HomeScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
