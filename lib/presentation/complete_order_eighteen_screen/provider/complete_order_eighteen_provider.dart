import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/complete_order_eighteen_screen/models/complete_order_eighteen_model.dart';import '../models/userprofile3_item_model.dart';/// A provider class for the CompleteOrderEighteenScreen.
///
/// This provider manages the state of the CompleteOrderEighteenScreen, including the
/// current completeOrderEighteenModelObj

// ignore_for_file: must_be_immutable
class CompleteOrderEighteenProvider extends ChangeNotifier {CompleteOrderEighteenModel completeOrderEighteenModelObj = CompleteOrderEighteenModel();

@override void dispose() { super.dispose(); } 
 }
