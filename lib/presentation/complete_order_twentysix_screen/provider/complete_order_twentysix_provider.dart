import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/complete_order_twentysix_screen/models/complete_order_twentysix_model.dart';

/// A provider class for the CompleteOrderTwentysixScreen.
///
/// This provider manages the state of the CompleteOrderTwentysixScreen, including the
/// current completeOrderTwentysixModelObj
class CompleteOrderTwentysixProvider extends ChangeNotifier {
  CompleteOrderTwentysixModel completeOrderTwentysixModelObj =
      CompleteOrderTwentysixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
