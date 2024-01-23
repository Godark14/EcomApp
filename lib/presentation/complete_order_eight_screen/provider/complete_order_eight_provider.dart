import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_eight_screen/models/complete_order_eight_model.dart';

/// A provider class for the CompleteOrderEightScreen.
///
/// This provider manages the state of the CompleteOrderEightScreen, including the
/// current completeOrderEightModelObj
class CompleteOrderEightProvider extends ChangeNotifier {
  CompleteOrderEightModel completeOrderEightModelObj =
      CompleteOrderEightModel();

  @override
  void dispose() {
    super.dispose();
  }
}
