import 'models/complete_order_fourteen_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_fourteen_provider.dart';

class CompleteOrderFourteenScreen extends StatefulWidget {
  const CompleteOrderFourteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderFourteenScreenState createState() =>
      CompleteOrderFourteenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderFourteenProvider(),
      child: CompleteOrderFourteenScreen(),
    );
  }
}

class CompleteOrderFourteenScreenState
    extends State<CompleteOrderFourteenScreen> {
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
              SizedBox(
                height: 498.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 35.v),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "msg_quinoa_fruit_salad2".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            _buildQuinoaFruitSaladRow(context),
                            SizedBox(height: 28.v),
                            Divider(
                              color: appTheme.gray10002,
                            ),
                            SizedBox(height: 32.v),
                            Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "msg_one_pack_contains".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            SizedBox(
                              width: 177.h,
                              child: Divider(
                                indent: 24.h,
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 323.h,
                                margin: EdgeInsets.only(
                                  left: 24.h,
                                  right: 27.h,
                                ),
                                child: Text(
                                  "msg_red_quinoa_lime".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .titleMediumPrimaryContainer
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Divider(
                              color: appTheme.gray10002,
                            ),
                            SizedBox(height: 23.v),
                            Container(
                              width: 267.h,
                              margin: EdgeInsets.only(
                                left: 24.h,
                                right: 83.h,
                              ),
                              child: Text(
                                "msg_if_you_are_looking".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                            SizedBox(height: 72.v),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle5,
                      height: 48.v,
                      width: 2.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 20.v),
                    ),
                  ],
                ),
              ),
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
  Widget _buildQuinoaFruitSaladRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 3.v,
              ),
              child: CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                child: CustomImageView(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                bottom: 2.v,
              ),
              child: Text(
                "lbl_1".tr,
                style: CustomTextStyles.headlineSmallPrimaryContainerRegular,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 1.v,
                bottom: 3.v,
              ),
              child: CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillOrangeTL16,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgGroupPrimarycontainer,
              height: 16.v,
              width: 20.h,
              margin: EdgeInsets.symmetric(vertical: 10.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 1.v,
              ),
              child: Text(
                "lbl_2_000".tr,
                style: CustomTextStyles.headlineSmallPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
