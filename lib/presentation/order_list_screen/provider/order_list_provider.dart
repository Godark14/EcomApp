import 'package:flutter/material.dart';import 'package:ecomapp/core/app_export.dart';import 'package:ecomapp/presentation/order_list_screen/models/order_list_model.dart';import '../models/userprofile_item_model.dart';/// A provider class for the OrderListScreen.
///
/// This provider manages the state of the OrderListScreen, including the
/// current orderListModelObj

// ignore_for_file: must_be_immutable
class OrderListProvider extends ChangeNotifier {OrderListModel orderListModelObj = OrderListModel();

@override void dispose() { super.dispose(); } 
 }
