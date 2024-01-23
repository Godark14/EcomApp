import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirtyseven_screen/models/complete_order_thirtyseven_model.dart';

/// A provider class for the CompleteOrderThirtysevenScreen.
///
/// This provider manages the state of the CompleteOrderThirtysevenScreen, including the
/// current completeOrderThirtysevenModelObj
class CompleteOrderThirtysevenProvider extends ChangeNotifier {
  CompleteOrderThirtysevenModel completeOrderThirtysevenModelObj =
      CompleteOrderThirtysevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
