import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_four_screen/models/complete_order_four_model.dart';

/// A provider class for the CompleteOrderFourScreen.
///
/// This provider manages the state of the CompleteOrderFourScreen, including the
/// current completeOrderFourModelObj
class CompleteOrderFourProvider extends ChangeNotifier {
  CompleteOrderFourModel completeOrderFourModelObj = CompleteOrderFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
