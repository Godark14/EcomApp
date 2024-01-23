import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_thirtysix_screen/models/complete_order_thirtysix_model.dart';

/// A provider class for the CompleteOrderThirtysixScreen.
///
/// This provider manages the state of the CompleteOrderThirtysixScreen, including the
/// current completeOrderThirtysixModelObj
class CompleteOrderThirtysixProvider extends ChangeNotifier {
  CompleteOrderThirtysixModel completeOrderThirtysixModelObj =
      CompleteOrderThirtysixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
