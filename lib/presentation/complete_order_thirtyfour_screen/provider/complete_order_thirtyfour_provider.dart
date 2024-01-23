import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirtyfour_screen/models/complete_order_thirtyfour_model.dart';

/// A provider class for the CompleteOrderThirtyfourScreen.
///
/// This provider manages the state of the CompleteOrderThirtyfourScreen, including the
/// current completeOrderThirtyfourModelObj
class CompleteOrderThirtyfourProvider extends ChangeNotifier {
  CompleteOrderThirtyfourModel completeOrderThirtyfourModelObj =
      CompleteOrderThirtyfourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
