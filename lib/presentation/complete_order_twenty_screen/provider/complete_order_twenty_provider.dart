import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twenty_screen/models/complete_order_twenty_model.dart';

/// A provider class for the CompleteOrderTwentyScreen.
///
/// This provider manages the state of the CompleteOrderTwentyScreen, including the
/// current completeOrderTwentyModelObj
class CompleteOrderTwentyProvider extends ChangeNotifier {
  CompleteOrderTwentyModel completeOrderTwentyModelObj =
      CompleteOrderTwentyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
