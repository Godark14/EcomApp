import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/home_screen_one_five_page/models/home_screen_one_five_model.dart';import '../models/viewhierarchy1_item_model.dart';/// A provider class for the HomeScreenOneFivePage.
///
/// This provider manages the state of the HomeScreenOneFivePage, including the
/// current homeScreenOneFiveModelObj

// ignore_for_file: must_be_immutable
class HomeScreenOneFiveProvider extends ChangeNotifier {HomeScreenOneFiveModel homeScreenOneFiveModelObj = HomeScreenOneFiveModel();

@override void dispose() { super.dispose(); } 
 }
