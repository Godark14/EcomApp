import 'models/add_to_basket_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:ecomapp/widgets/custom_elevated_button.dart';
import 'package:ecomapp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'provider/add_to_basket_provider.dart';

class AddToBasketScreen extends StatefulWidget {
  const AddToBasketScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddToBasketScreenState createState() => AddToBasketScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddToBasketProvider(),
      child: AddToBasketScreen(),
    );
  }
}

class AddToBasketScreenState extends State<AddToBasketScreen> {
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.v),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "msg_quinoa_fruit_salad2".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildArrowDown(context),
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
                      child: Text(
                        "msg_red_quinoa_lime".tr,
                        style: CustomTextStyles.titleMediumPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Divider(
                      color: appTheme.gray10002,
                    ),
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "msg_if_you_are_looking".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 36.v),
                    _buildAddToBasket(context),
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
  Widget _buildArrowDown(BuildContext context) {
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
            Container(
              height: 16.v,
              width: 20.h,
              margin: EdgeInsets.symmetric(vertical: 10.v),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupPrimarycontainer,
                    height: 16.v,
                    width: 20.h,
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupPrimarycontainer,
                    height: 16.v,
                    width: 20.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
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

  /// Section Widget
  Widget _buildAddToBasket(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.v),
              child: CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillYellow,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFavoritePrimary,
                ),
              ),
            ),
            CustomElevatedButton(
              height: 56.v,
              width: 219.h,
              text: "lbl_add_to_basket".tr,
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
            ),
          ],
        ),
      ),
    );
  }
}
