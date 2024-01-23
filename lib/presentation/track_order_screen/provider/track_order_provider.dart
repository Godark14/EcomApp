import 'package:flutter/material.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/presentation/track_order_screen/models/track_order_model.dart';

/// A provider class for the TrackOrderScreen.
///
/// This provider manages the state of the TrackOrderScreen, including the
/// current trackOrderModelObj
class TrackOrderProvider extends ChangeNotifier {
  TrackOrderModel trackOrderModelObj = TrackOrderModel();

  @override
  void dispose() {
    super.dispose();
  }
}
