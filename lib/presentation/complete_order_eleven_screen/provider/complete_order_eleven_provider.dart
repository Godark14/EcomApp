import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_eleven_screen/models/complete_order_eleven_model.dart';

/// A provider class for the CompleteOrderElevenScreen.
///
/// This provider manages the state of the CompleteOrderElevenScreen, including the
/// current completeOrderElevenModelObj
class CompleteOrderElevenProvider extends ChangeNotifier {
  CompleteOrderElevenModel completeOrderElevenModelObj =
      CompleteOrderElevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
