import 'models/complete_order_four_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_four_provider.dart';

class CompleteOrderFourScreen extends StatefulWidget {
  const CompleteOrderFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderFourScreenState createState() => CompleteOrderFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderFourProvider(),
      child: CompleteOrderFourScreen(),
    );
  }
}

class CompleteOrderFourScreenState extends State<CompleteOrderFourScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBreakfastQuino,
                height: 176.adaptSize,
                width: 176.adaptSize,
              ),
              SizedBox(height: 32.v),
              _buildBreakfastQuinoView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 24.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBreakfastQuinoView(BuildContext context) {
    return Container(
      height: 498.v,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.h),
        ),
      ),
    );
  }
}
