import 'models/complete_order_eleven_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title.dart';
import 'package:ecomapp/widgets/app_bar/appbar_title_button.dart';
import 'package:ecomapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'provider/complete_order_eleven_provider.dart';

class CompleteOrderElevenScreen extends StatefulWidget {
  const CompleteOrderElevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CompleteOrderElevenScreenState createState() =>
      CompleteOrderElevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CompleteOrderElevenProvider(),
      child: CompleteOrderElevenScreen(),
    );
  }
}

class CompleteOrderElevenScreenState extends State<CompleteOrderElevenScreen> {
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
              padding: EdgeInsets.symmetric(vertical: 40.v),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  _buildBreakfastQuino(context),
                  SizedBox(height: 16.v),
                  Divider(
                    color: appTheme.gray10004,
                  ),
                  SizedBox(height: 16.v),
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
}
