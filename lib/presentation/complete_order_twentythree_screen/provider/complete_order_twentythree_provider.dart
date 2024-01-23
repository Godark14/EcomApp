import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentythree_screen/models/complete_order_twentythree_model.dart';

/// A provider class for the CompleteOrderTwentythreeScreen.
///
/// This provider manages the state of the CompleteOrderTwentythreeScreen, including the
/// current completeOrderTwentythreeModelObj
class CompleteOrderTwentythreeProvider extends ChangeNotifier {
  CompleteOrderTwentythreeModel completeOrderTwentythreeModelObj =
      CompleteOrderTwentythreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
