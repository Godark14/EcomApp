import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentytwo_screen/models/complete_order_twentytwo_model.dart';

/// A provider class for the CompleteOrderTwentytwoScreen.
///
/// This provider manages the state of the CompleteOrderTwentytwoScreen, including the
/// current completeOrderTwentytwoModelObj
class CompleteOrderTwentytwoProvider extends ChangeNotifier {
  CompleteOrderTwentytwoModel completeOrderTwentytwoModelObj =
      CompleteOrderTwentytwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
