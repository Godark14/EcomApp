import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_fifteen_bottomsheet/models/complete_order_fifteen_model.dart';

/// A provider class for the CompleteOrderFifteenBottomsheet.
///
/// This provider manages the state of the CompleteOrderFifteenBottomsheet, including the
/// current completeOrderFifteenModelObj
class CompleteOrderFifteenProvider extends ChangeNotifier {
  TextEditingController addressController = TextEditingController();

  TextEditingController numberwecancallvalueController =
      TextEditingController();

  CompleteOrderFifteenModel completeOrderFifteenModelObj =
      CompleteOrderFifteenModel();

  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
    numberwecancallvalueController.dispose();
  }
}
