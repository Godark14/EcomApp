import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirtytwo_screen/models/complete_order_thirtytwo_model.dart';

/// A provider class for the CompleteOrderThirtytwoScreen.
///
/// This provider manages the state of the CompleteOrderThirtytwoScreen, including the
/// current completeOrderThirtytwoModelObj
class CompleteOrderThirtytwoProvider extends ChangeNotifier {
  CompleteOrderThirtytwoModel completeOrderThirtytwoModelObj =
      CompleteOrderThirtytwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
