import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_fourteen_screen/models/complete_order_fourteen_model.dart';

/// A provider class for the CompleteOrderFourteenScreen.
///
/// This provider manages the state of the CompleteOrderFourteenScreen, including the
/// current completeOrderFourteenModelObj
class CompleteOrderFourteenProvider extends ChangeNotifier {
  CompleteOrderFourteenModel completeOrderFourteenModelObj =
      CompleteOrderFourteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
