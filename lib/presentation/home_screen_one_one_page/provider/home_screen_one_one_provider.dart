import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/home_screen_one_one_page/models/home_screen_one_one_model.dart';import '../models/viewhierarchy_item_model.dart';/// A provider class for the HomeScreenOneOnePage.
///
/// This provider manages the state of the HomeScreenOneOnePage, including the
/// current homeScreenOneOneModelObj

// ignore_for_file: must_be_immutable
class HomeScreenOneOneProvider extends ChangeNotifier {HomeScreenOneOneModel homeScreenOneOneModelObj = HomeScreenOneOneModel();

@override void dispose() { super.dispose(); } 
 }
