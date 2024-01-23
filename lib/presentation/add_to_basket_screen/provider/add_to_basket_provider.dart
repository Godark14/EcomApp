import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/add_to_basket_screen/models/add_to_basket_model.dart';

/// A provider class for the AddToBasketScreen.
///
/// This provider manages the state of the AddToBasketScreen, including the
/// current addToBasketModelObj
class AddToBasketProvider extends ChangeNotifier {
  AddToBasketModel addToBasketModelObj = AddToBasketModel();

  @override
  void dispose() {
    super.dispose();
  }
}
