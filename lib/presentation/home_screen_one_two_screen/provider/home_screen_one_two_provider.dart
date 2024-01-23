import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/home_screen_one_two_screen/models/home_screen_one_two_model.dart';

/// A provider class for the HomeScreenOneTwoScreen.
///
/// This provider manages the state of the HomeScreenOneTwoScreen, including the
/// current homeScreenOneTwoModelObj
class HomeScreenOneTwoProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  HomeScreenOneTwoModel homeScreenOneTwoModelObj = HomeScreenOneTwoModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
