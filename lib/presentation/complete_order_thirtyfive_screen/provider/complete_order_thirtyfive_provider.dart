import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirtyfive_screen/models/complete_order_thirtyfive_model.dart';

/// A provider class for the CompleteOrderThirtyfiveScreen.
///
/// This provider manages the state of the CompleteOrderThirtyfiveScreen, including the
/// current completeOrderThirtyfiveModelObj
class CompleteOrderThirtyfiveProvider extends ChangeNotifier {
  CompleteOrderThirtyfiveModel completeOrderThirtyfiveModelObj =
      CompleteOrderThirtyfiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
