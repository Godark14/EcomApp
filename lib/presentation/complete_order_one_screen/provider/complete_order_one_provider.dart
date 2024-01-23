import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_one_screen/models/complete_order_one_model.dart';

/// A provider class for the CompleteOrderOneScreen.
///
/// This provider manages the state of the CompleteOrderOneScreen, including the
/// current completeOrderOneModelObj
class CompleteOrderOneProvider extends ChangeNotifier {
  CompleteOrderOneModel completeOrderOneModelObj = CompleteOrderOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
