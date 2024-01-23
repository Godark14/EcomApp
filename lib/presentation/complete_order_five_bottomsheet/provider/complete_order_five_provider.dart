import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_five_bottomsheet/models/complete_order_five_model.dart';

/// A provider class for the CompleteOrderFiveBottomsheet.
///
/// This provider manages the state of the CompleteOrderFiveBottomsheet, including the
/// current completeOrderFiveModelObj
class CompleteOrderFiveProvider extends ChangeNotifier {
  TextEditingController addressController = TextEditingController();

  CompleteOrderFiveModel completeOrderFiveModelObj = CompleteOrderFiveModel();

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
  }
}
