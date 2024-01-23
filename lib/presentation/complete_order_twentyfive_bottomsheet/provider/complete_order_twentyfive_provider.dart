import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentyfive_bottomsheet/models/complete_order_twentyfive_model.dart';

/// A provider class for the CompleteOrderTwentyfiveBottomsheet.
///
/// This provider manages the state of the CompleteOrderTwentyfiveBottomsheet, including the
/// current completeOrderTwentyfiveModelObj
class CompleteOrderTwentyfiveProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cCVvalueController = TextEditingController();

  CompleteOrderTwentyfiveModel completeOrderTwentyfiveModelObj =
      CompleteOrderTwentyfiveModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    dateController.dispose();
    cCVvalueController.dispose();
  }
}
