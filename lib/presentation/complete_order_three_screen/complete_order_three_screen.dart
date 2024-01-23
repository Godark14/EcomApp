import 'models/complete_order_three_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_elevated_button.dart';
import 'package:ecomapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_three_provider.dart';

class CompleteOrderThreeScreen extends StatefulWidget {
  const CompleteOrderThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderThreeScreenState createState() =>
      CompleteOrderThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderThreeProvider(),
      child: CompleteOrderThreeScreen(),
    );
  }
}

class CompleteOrderThreeScreenState extends State<CompleteOrderThreeScreen> {
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
            child: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 32.v),
                          _buildBreakfastQuino(context),
                          SizedBox(height: 16.v),
                          Divider(
                            color: appTheme.gray10004,
                          ),
                          SizedBox(height: 31.v),
                          _buildBerryWorldKiwi(context),
                          SizedBox(height: 16.v),
                          Divider(
                            color: appTheme.gray10004,
                          ),
                          SizedBox(height: 31.v),
                          _buildBestEverTropi(context),
                          SizedBox(height: 236.v),
                          _buildCheckout(context),
                          SizedBox(height: 43.v),
                          _buildLine(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 163.h,
                        vertical: 298.v,
                      ),
                      decoration: AppDecoration.fillBlack,
                      child: CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.fillWhiteA,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClose,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 28.v,
                      ),
                      child: Row(
                        children: [
                          CustomElevatedButton(
                            width: 80.h,
                            text: "lbl_go_back".tr,
                            margin: EdgeInsets.only(bottom: 4.v),
                            leftIcon: Container(
                              margin: EdgeInsets.only(right: 4.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowleft,
                                height: 20.v,
                                width: 10.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 34.h),
                            child: Text(
                              "lbl_my_basket2".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBreakfastQuino(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.v,
            width: 65.h,
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.fillYellow5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgBreakfastQuino,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 10.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_quinoa_fruit_salad".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_2packs".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgGroupPrimarycontainer,
            height: 12.v,
            width: 16.h,
            margin: EdgeInsets.only(
              top: 26.v,
              bottom: 25.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 22.v,
              bottom: 18.v,
            ),
            child: Text(
              "lbl_20_000".tr,
              style: CustomTextStyles.titleMediumPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBerryWorldKiwi(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.v,
            width: 65.h,
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgBerryworldKiwi,
              height: 24.v,
              width: 40.h,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_melon_fruit_salad2".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_2packs".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgGroupPrimarycontainer,
            height: 12.v,
            width: 16.h,
            margin: EdgeInsets.only(
              top: 26.v,
              bottom: 25.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 22.v,
              bottom: 18.v,
            ),
            child: Text(
              "lbl_20_000".tr,
              style: CustomTextStyles.titleMediumPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestEverTropi(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 64.v,
            width: 65.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 19.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgBestEverTropi,
              height: 25.v,
              width: 48.h,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 11.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_tropical_fruit_salad".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_2packs".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgGroupPrimarycontainer,
            height: 12.v,
            width: 16.h,
            margin: EdgeInsets.only(
              top: 26.v,
              bottom: 25.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 22.v,
              bottom: 18.v,
            ),
            child: Text(
              "lbl_20_000".tr,
              style: CustomTextStyles.titleMediumPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_total".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 1.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupPrimarycontainer,
                    height: 16.v,
                    width: 20.h,
                    margin: EdgeInsets.only(
                      top: 7.v,
                      bottom: 11.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_60_000".tr,
                      style: CustomTextStyles.headlineSmallPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomElevatedButton(
            height: 56.v,
            width: 199.h,
            text: "lbl_checkout".tr,
            margin: EdgeInsets.only(
              left: 24.h,
              bottom: 3.v,
            ),
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
