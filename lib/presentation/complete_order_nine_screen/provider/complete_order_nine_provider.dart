import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/complete_order_nine_screen/models/complete_order_nine_model.dart';import '../models/userprofile1_item_model.dart';/// A provider class for the CompleteOrderNineScreen.
///
/// This provider manages the state of the CompleteOrderNineScreen, including the
/// current completeOrderNineModelObj

// ignore_for_file: must_be_immutable
class CompleteOrderNineProvider extends ChangeNotifier {CompleteOrderNineModel completeOrderNineModelObj = CompleteOrderNineModel();

@override void dispose() { super.dispose(); } 
 }
