import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentyeight_bottomsheet/models/complete_order_twentyeight_model.dart';

/// A provider class for the CompleteOrderTwentyeightBottomsheet.
///
/// This provider manages the state of the CompleteOrderTwentyeightBottomsheet, including the
/// current completeOrderTwentyeightModelObj
class CompleteOrderTwentyeightProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cCVvalueController = TextEditingController();

  CompleteOrderTwentyeightModel completeOrderTwentyeightModelObj =
      CompleteOrderTwentyeightModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    dateController.dispose();
    cCVvalueController.dispose();
  }
}
