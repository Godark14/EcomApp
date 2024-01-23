import 'models/complete_order_twentysix_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_twentysix_provider.dart';

class CompleteOrderTwentysixScreen extends StatefulWidget {
  const CompleteOrderTwentysixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderTwentysixScreenState createState() =>
      CompleteOrderTwentysixScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderTwentysixProvider(),
      child: CompleteOrderTwentysixScreen(),
    );
  }
}

class CompleteOrderTwentysixScreenState
    extends State<CompleteOrderTwentysixScreen> {
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
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 40.v,
              ),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDeliveryStatusRow(context),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: SizedBox(
                      height: 40.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  _buildOrderIsBeingPreparedRow(context),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: SizedBox(
                      height: 40.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                ],
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

  /// Section Widget
  Widget _buildDeliveryStatusRow(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64.v,
          width: 65.h,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.fillYellow5002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.img19190811Custo,
            height: 43.v,
            width: 48.h,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 20.v,
            bottom: 20.v,
          ),
          child: Text(
            "lbl_order_taken".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTopcoatCheckmark,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOrderIsBeingPreparedRow(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 64.v,
          width: 65.h,
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.img68512RemovebgPreview,
            height: 56.adaptSize,
            width: 56.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 23.v,
            bottom: 17.v,
          ),
          child: Text(
            "msg_order_is_being_prepared".tr,
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgTopcoatCheckmark,
            ),
          ),
        ),
      ],
    );
  }
}
