import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_details_bottomsheet/models/complete_details_model.dart';

/// A provider class for the CompleteDetailsBottomsheet.
///
/// This provider manages the state of the CompleteDetailsBottomsheet, including the
/// current completeDetailsModelObj
class CompleteDetailsProvider extends ChangeNotifier {
  TextEditingController deliveryAddressController = TextEditingController();

  TextEditingController numberWeCanCallValueController =
      TextEditingController();

  CompleteDetailsModel completeDetailsModelObj = CompleteDetailsModel();

  @override
  void dispose() {
    super.dispose();
    deliveryAddressController.dispose();
    numberWeCanCallValueController.dispose();
  }
}
