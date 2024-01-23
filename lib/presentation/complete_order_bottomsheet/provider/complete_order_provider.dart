import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/complete_order_bottomsheet/models/complete_order_model.dart';/// A provider class for the CompleteOrderBottomsheet.
///
/// This provider manages the state of the CompleteOrderBottomsheet, including the
/// current completeOrderModelObj

// ignore_for_file: must_be_immutable
class CompleteOrderProvider extends ChangeNotifier {TextEditingController deliveryAddressController = TextEditingController();

TextEditingController numberWeCanCallValueController = TextEditingController();

CompleteOrderModel completeOrderModelObj = CompleteOrderModel();

@override void dispose() { super.dispose(); deliveryAddressController.dispose(); numberWeCanCallValueController.dispose(); } 
 }
