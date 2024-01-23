import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_seventeen_screen/models/complete_order_seventeen_model.dart';

/// A provider class for the CompleteOrderSeventeenScreen.
///
/// This provider manages the state of the CompleteOrderSeventeenScreen, including the
/// current completeOrderSeventeenModelObj
class CompleteOrderSeventeenProvider extends ChangeNotifier {
  CompleteOrderSeventeenModel completeOrderSeventeenModelObj =
      CompleteOrderSeventeenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
