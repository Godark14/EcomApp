import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_six_screen/models/complete_order_six_model.dart';

/// A provider class for the CompleteOrderSixScreen.
///
/// This provider manages the state of the CompleteOrderSixScreen, including the
/// current completeOrderSixModelObj
class CompleteOrderSixProvider extends ChangeNotifier {
  CompleteOrderSixModel completeOrderSixModelObj = CompleteOrderSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
