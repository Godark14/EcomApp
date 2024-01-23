import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentyseven_screen/models/complete_order_twentyseven_model.dart';

/// A provider class for the CompleteOrderTwentysevenScreen.
///
/// This provider manages the state of the CompleteOrderTwentysevenScreen, including the
/// current completeOrderTwentysevenModelObj
class CompleteOrderTwentysevenProvider extends ChangeNotifier {
  CompleteOrderTwentysevenModel completeOrderTwentysevenModelObj =
      CompleteOrderTwentysevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
