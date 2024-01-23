import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/home_screen_one_six_screen/models/home_screen_one_six_model.dart';

/// A provider class for the HomeScreenOneSixScreen.
///
/// This provider manages the state of the HomeScreenOneSixScreen, including the
/// current homeScreenOneSixModelObj
class HomeScreenOneSixProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeScreenOneSixModel homeScreenOneSixModelObj = HomeScreenOneSixModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
