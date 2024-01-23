import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/home_screen_one_four_screen/models/home_screen_one_four_model.dart';import '../models/menu1_item_model.dart';/// A provider class for the HomeScreenOneFourScreen.
///
/// This provider manages the state of the HomeScreenOneFourScreen, including the
/// current homeScreenOneFourModelObj

// ignore_for_file: must_be_immutable
class HomeScreenOneFourProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeScreenOneFourModel homeScreenOneFourModelObj = HomeScreenOneFourModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
