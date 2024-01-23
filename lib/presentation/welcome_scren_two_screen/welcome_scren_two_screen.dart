import 'models/welcome_scren_two_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/welcome_scren_two_provider.dart';

class WelcomeScrenTwoScreen extends StatefulWidget {
  const WelcomeScrenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScrenTwoScreenState createState() => WelcomeScrenTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeScrenTwoProvider(),
      child: WelcomeScrenTwoScreen(),
    );
  }
}

class WelcomeScrenTwoScreenState extends State<WelcomeScrenTwoScreen> {
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
                  vertical: 34.v,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Column(
                  children: [
                    SizedBox(height: 53.v),
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
              SizedBox(height: 55.v),
              Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Text(
                  "msg_get_the_freshest".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                width: 270.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 80.h,
                ),
                child: Text(
                  "msg_we_deliver_the_best".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray600.copyWith(
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
