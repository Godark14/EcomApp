import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/complete_order_twelve_screen/models/complete_order_twelve_model.dart';import '../models/userprofilelist1_item_model.dart';/// A provider class for the CompleteOrderTwelveScreen.
///
/// This provider manages the state of the CompleteOrderTwelveScreen, including the
/// current completeOrderTwelveModelObj

// ignore_for_file: must_be_immutable
class CompleteOrderTwelveProvider extends ChangeNotifier {CompleteOrderTwelveModel completeOrderTwelveModelObj = CompleteOrderTwelveModel();

@override void dispose() { super.dispose(); } 
 }
