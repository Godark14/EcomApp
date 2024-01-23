import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_ten_screen/models/complete_order_ten_model.dart';

/// A provider class for the CompleteOrderTenScreen.
///
/// This provider manages the state of the CompleteOrderTenScreen, including the
/// current completeOrderTenModelObj
class CompleteOrderTenProvider extends ChangeNotifier {
  CompleteOrderTenModel completeOrderTenModelObj = CompleteOrderTenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
