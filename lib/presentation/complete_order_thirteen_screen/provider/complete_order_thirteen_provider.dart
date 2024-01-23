import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirteen_screen/models/complete_order_thirteen_model.dart';

/// A provider class for the CompleteOrderThirteenScreen.
///
/// This provider manages the state of the CompleteOrderThirteenScreen, including the
/// current completeOrderThirteenModelObj
class CompleteOrderThirteenProvider extends ChangeNotifier {
  CompleteOrderThirteenModel completeOrderThirteenModelObj =
      CompleteOrderThirteenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
