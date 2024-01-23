import 'models/complete_order_thirtysix_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_thirtysix_provider.dart';

class CompleteOrderThirtysixScreen extends StatefulWidget {
  const CompleteOrderThirtysixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderThirtysixScreenState createState() =>
      CompleteOrderThirtysixScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderThirtysixProvider(),
      child: CompleteOrderThirtysixScreen(),
    );
  }
}

class CompleteOrderThirtysixScreenState
    extends State<CompleteOrderThirtysixScreen> {
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
            padding: EdgeInsets.only(top: 133.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 56.h),
                  child: SizedBox(
                    height: 40.v,
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.v,
                    ),
                  ),
                ),
                SizedBox(height: 72.v),
                Padding(
                  padding: EdgeInsets.only(left: 56.h),
                  child: SizedBox(
                    height: 40.v,
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.v,
                    ),
                  ),
                ),
                SizedBox(height: 72.v),
                Padding(
                  padding: EdgeInsets.only(left: 56.h),
                  child: SizedBox(
                    height: 19.v,
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.v,
                    ),
                  ),
                ),
                SizedBox(height: 135.v),
                Padding(
                  padding: EdgeInsets.only(left: 56.h),
                  child: SizedBox(
                    height: 40.v,
                    child: VerticalDivider(
                      width: 2.h,
                      thickness: 2.v,
                    ),
                  ),
                ),
                SizedBox(height: 142.v),
                Container(
                  height: 9.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
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
              text: "lbl_delivery_status".tr,
              margin: EdgeInsets.only(
                left: 14.h,
                top: 1.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
