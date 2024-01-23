import 'models/complete_order_twenty_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_twenty_provider.dart';

class CompleteOrderTwentyScreen extends StatefulWidget {
  const CompleteOrderTwentyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwentyScreenState createState() =>
      CompleteOrderTwentyScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwentyProvider(),
      child: CompleteOrderTwentyScreen(),
    );
  }
}

class CompleteOrderTwentyScreenState extends State<CompleteOrderTwentyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse13,
              height: 812.v,
              width: 375.h,
            ),
          ),
        ),
      ),
    );
  }
}
