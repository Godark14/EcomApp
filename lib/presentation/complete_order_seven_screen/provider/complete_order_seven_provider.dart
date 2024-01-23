import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_seven_screen/models/complete_order_seven_model.dart';

/// A provider class for the CompleteOrderSevenScreen.
///
/// This provider manages the state of the CompleteOrderSevenScreen, including the
/// current completeOrderSevenModelObj
class CompleteOrderSevenProvider extends ChangeNotifier {
  CompleteOrderSevenModel completeOrderSevenModelObj =
      CompleteOrderSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
