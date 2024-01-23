import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/input_card_details_bottomsheet/models/input_card_details_model.dart';

/// A provider class for the InputCardDetailsBottomsheet.
///
/// This provider manages the state of the InputCardDetailsBottomsheet, including the
/// current inputCardDetailsModelObj
class InputCardDetailsProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController cCVvalueController = TextEditingController();

  InputCardDetailsModel inputCardDetailsModelObj = InputCardDetailsModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    dateController.dispose();
    cCVvalueController.dispose();
  }
}
