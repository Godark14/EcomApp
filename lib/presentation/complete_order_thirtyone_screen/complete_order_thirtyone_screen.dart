import 'models/complete_order_thirtyone_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_thirtyone_provider.dart';

class CompleteOrderThirtyoneScreen extends StatefulWidget {
  const CompleteOrderThirtyoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderThirtyoneScreenState createState() =>
      CompleteOrderThirtyoneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderThirtyoneProvider(),
      child: CompleteOrderThirtyoneScreen(),
    );
  }
}

class CompleteOrderThirtyoneScreenState
    extends State<CompleteOrderThirtyoneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 116.v),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              Container(
                margin: EdgeInsets.only(left: 1.h),
                padding: EdgeInsets.all(30.h),
                decoration: AppDecoration.outlineGreen.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder82,
                ),
                child: Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  padding: EdgeInsets.all(29.h),
                  decoration: AppDecoration.fillGreen.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder50,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTopcoatCheckmark,
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
