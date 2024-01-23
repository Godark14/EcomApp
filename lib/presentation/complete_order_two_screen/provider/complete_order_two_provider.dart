import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/complete_order_two_screen/models/complete_order_two_model.dart';import '../models/userprofilelist_item_model.dart';/// A provider class for the CompleteOrderTwoScreen.
///
/// This provider manages the state of the CompleteOrderTwoScreen, including the
/// current completeOrderTwoModelObj

// ignore_for_file: must_be_immutable
class CompleteOrderTwoProvider extends ChangeNotifier {CompleteOrderTwoModel completeOrderTwoModelObj = CompleteOrderTwoModel();

@override void dispose() { super.dispose(); } 
 }
