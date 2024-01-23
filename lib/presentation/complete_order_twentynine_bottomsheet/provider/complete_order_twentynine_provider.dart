import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentynine_bottomsheet/models/complete_order_twentynine_model.dart';

/// A provider class for the CompleteOrderTwentynineBottomsheet.
///
/// This provider manages the state of the CompleteOrderTwentynineBottomsheet, including the
/// current completeOrderTwentynineModelObj
class CompleteOrderTwentynineProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  CompleteOrderTwentynineModel completeOrderTwentynineModelObj =
      CompleteOrderTwentynineModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }
}
