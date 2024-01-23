import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirty_bottomsheet/models/complete_order_thirty_model.dart';

/// A provider class for the CompleteOrderThirtyBottomsheet.
///
/// This provider manages the state of the CompleteOrderThirtyBottomsheet, including the
/// current completeOrderThirtyModelObj
class CompleteOrderThirtyProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  CompleteOrderThirtyModel completeOrderThirtyModelObj =
      CompleteOrderThirtyModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
  }
}
