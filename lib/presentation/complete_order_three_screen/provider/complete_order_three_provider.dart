import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_three_screen/models/complete_order_three_model.dart';

/// A provider class for the CompleteOrderThreeScreen.
///
/// This provider manages the state of the CompleteOrderThreeScreen, including the
/// current completeOrderThreeModelObj
class CompleteOrderThreeProvider extends ChangeNotifier {
  CompleteOrderThreeModel completeOrderThreeModelObj =
      CompleteOrderThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
