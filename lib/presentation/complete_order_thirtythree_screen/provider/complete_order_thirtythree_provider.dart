import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirtythree_screen/models/complete_order_thirtythree_model.dart';

/// A provider class for the CompleteOrderThirtythreeScreen.
///
/// This provider manages the state of the CompleteOrderThirtythreeScreen, including the
/// current completeOrderThirtythreeModelObj
class CompleteOrderThirtythreeProvider extends ChangeNotifier {
  CompleteOrderThirtythreeModel completeOrderThirtythreeModelObj =
      CompleteOrderThirtythreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
