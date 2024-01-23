import 'models/complete_order_twentyone_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_twentyone_provider.dart';

class CompleteOrderTwentyoneScreen extends StatefulWidget {
  const CompleteOrderTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwentyoneScreenState createState() =>
      CompleteOrderTwentyoneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwentyoneProvider(),
      child: CompleteOrderTwentyoneScreen(),
    );
  }
}

class CompleteOrderTwentyoneScreenState
    extends State<CompleteOrderTwentyoneScreen> {
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 38.h),
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
              SizedBox(height: 53.v),
              Text(
                "msg_congratulations".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 239.h,
                child: Text(
                  "msg_your_order_have".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeRegular.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
