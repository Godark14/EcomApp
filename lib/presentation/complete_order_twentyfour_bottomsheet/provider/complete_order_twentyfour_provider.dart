import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/complete_order_twentyfour_bottomsheet/models/complete_order_twentyfour_model.dart';/// A provider class for the CompleteOrderTwentyfourBottomsheet.
///
/// This provider manages the state of the CompleteOrderTwentyfourBottomsheet, including the
/// current completeOrderTwentyfourModelObj

// ignore_for_file: must_be_immutable
class CompleteOrderTwentyfourProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController cardNumberController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController cCVvalueController = TextEditingController();

CompleteOrderTwentyfourModel completeOrderTwentyfourModelObj = CompleteOrderTwentyfourModel();

@override void dispose() { super.dispose(); nameController.dispose(); cardNumberController.dispose(); dateController.dispose(); cCVvalueController.dispose(); } 
 }
