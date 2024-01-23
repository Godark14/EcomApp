import 'models/complete_order_thirtyfive_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_thirtyfive_provider.dart';

class CompleteOrderThirtyfiveScreen extends StatefulWidget {
  const CompleteOrderThirtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderThirtyfiveScreenState createState() =>
      CompleteOrderThirtyfiveScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderThirtyfiveProvider(),
      child: CompleteOrderThirtyfiveScreen(),
    );
  }
}

class CompleteOrderThirtyfiveScreenState
    extends State<CompleteOrderThirtyfiveScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse14,
              height: 812.v,
              width: 375.h,
            ),
          ),
        ),
      ),
    );
  }
}
