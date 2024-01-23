import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/complete_order_nineteen_screen/models/complete_order_nineteen_model.dart';import '../models/userprofile2_item_model.dart';/// A provider class for the CompleteOrderNineteenScreen.
///
/// This provider manages the state of the CompleteOrderNineteenScreen, including the
/// current completeOrderNineteenModelObj

// ignore_for_file: must_be_immutable
class CompleteOrderNineteenProvider extends ChangeNotifier {CompleteOrderNineteenModel completeOrderNineteenModelObj = CompleteOrderNineteenModel();

@override void dispose() { super.dispose(); } 
 }
