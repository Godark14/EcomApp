import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/order_complete_screen/models/order_complete_model.dart';

/// A provider class for the OrderCompleteScreen.
///
/// This provider manages the state of the OrderCompleteScreen, including the
/// current orderCompleteModelObj
class OrderCompleteProvider extends ChangeNotifier {
  OrderCompleteModel orderCompleteModelObj = OrderCompleteModel();

  @override
  void dispose() {
    super.dispose();
  }
}
