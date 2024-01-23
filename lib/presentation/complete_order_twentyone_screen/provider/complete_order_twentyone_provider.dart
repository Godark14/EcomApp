import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentyone_screen/models/complete_order_twentyone_model.dart';

/// A provider class for the CompleteOrderTwentyoneScreen.
///
/// This provider manages the state of the CompleteOrderTwentyoneScreen, including the
/// current completeOrderTwentyoneModelObj
class CompleteOrderTwentyoneProvider extends ChangeNotifier {
  CompleteOrderTwentyoneModel completeOrderTwentyoneModelObj =
      CompleteOrderTwentyoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
