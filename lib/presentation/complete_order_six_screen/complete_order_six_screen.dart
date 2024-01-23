import 'models/complete_order_six_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_six_provider.dart';

class CompleteOrderSixScreen extends StatefulWidget {
  const CompleteOrderSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderSixScreenState createState() => CompleteOrderSixScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderSixProvider(),
      child: CompleteOrderSixScreen(),
    );
  }
}

class CompleteOrderSixScreenState extends State<CompleteOrderSixScreen> {
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
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 25.v),
            child: Container(
              height: 677.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          children: [
            AppbarTitleButton(
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            AppbarTitle(
              text: "lbl_my_basket2".tr,
              margin: EdgeInsets.only(
                left: 34.h,
                top: 1.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
