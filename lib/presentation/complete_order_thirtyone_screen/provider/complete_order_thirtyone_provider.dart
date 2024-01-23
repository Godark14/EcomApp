import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirtyone_screen/models/complete_order_thirtyone_model.dart';

/// A provider class for the CompleteOrderThirtyoneScreen.
///
/// This provider manages the state of the CompleteOrderThirtyoneScreen, including the
/// current completeOrderThirtyoneModelObj
class CompleteOrderThirtyoneProvider extends ChangeNotifier {
  CompleteOrderThirtyoneModel completeOrderThirtyoneModelObj =
      CompleteOrderThirtyoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
