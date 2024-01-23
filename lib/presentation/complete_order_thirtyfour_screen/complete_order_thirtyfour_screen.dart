import 'models/complete_order_thirtyfour_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_thirtyfour_provider.dart';

class CompleteOrderThirtyfourScreen extends StatefulWidget {
  const CompleteOrderThirtyfourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderThirtyfourScreenState createState() =>
      CompleteOrderThirtyfourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderThirtyfourProvider(),
      child: CompleteOrderThirtyfourScreen(),
    );
  }
}

class CompleteOrderThirtyfourScreenState
    extends State<CompleteOrderThirtyfourScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
