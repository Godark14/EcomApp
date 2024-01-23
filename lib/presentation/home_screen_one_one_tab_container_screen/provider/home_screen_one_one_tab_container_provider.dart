import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/home_screen_one_one_tab_container_screen/models/home_screen_one_one_tab_container_model.dart';import '../models/menu_item_model.dart';/// A provider class for the HomeScreenOneOneTabContainerScreen.
///
/// This provider manages the state of the HomeScreenOneOneTabContainerScreen, including the
/// current homeScreenOneOneTabContainerModelObj

// ignore_for_file: must_be_immutable
class HomeScreenOneOneTabContainerProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeScreenOneOneTabContainerModel homeScreenOneOneTabContainerModelObj = HomeScreenOneOneTabContainerModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
