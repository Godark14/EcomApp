import 'models/welcome_scren_three_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:ecomapp/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'provider/welcome_scren_three_provider.dart';

class WelcomeScrenThreeScreen extends StatefulWidget {
  const WelcomeScrenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScrenThreeScreenState createState() => WelcomeScrenThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeScrenThreeProvider(),
      child: WelcomeScrenThreeScreen(),
    );
  }
}

class WelcomeScrenThreeScreenState extends State<WelcomeScrenThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 35.h,
                  vertical: 75.v,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 12.v),
                    _buildBasketOverlay(context),
                    SizedBox(height: 8.v),
                    Container(
                      height: 12.v,
                      width: 301.h,
                      decoration: BoxDecoration(
                        color: appTheme.yellow900,
                        borderRadius: BorderRadius.circular(
                          150.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_get_the_freshest".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "msg_we_deliver_the_best".tr,
                  style: CustomTextStyles.bodyLargeBluegray600,
                ),
              ),
              SizedBox(height: 55.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_let_s_continue".tr,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBasketOverlay(BuildContext context) {
    return SizedBox(
      height: 284.v,
      width: 301.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImgbinBasketO,
            height: 260.v,
            width: 301.h,
            alignment: Alignment.bottomCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFruitDrops2RemovebgPreview,
            height: 37.v,
            width: 50.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 4.h),
          ),
        ],
      ),
    );
  }
}
