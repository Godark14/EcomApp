import 'models/welcome_scren_one_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/welcome_scren_one_provider.dart';

class WelcomeScrenOneScreen extends StatefulWidget {
  const WelcomeScrenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScrenOneScreenState createState() => WelcomeScrenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeScrenOneProvider(),
      child: WelcomeScrenOneScreen(),
    );
  }
}

class WelcomeScrenOneScreenState extends State<WelcomeScrenOneScreen> {
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
            children: [
              SizedBox(height: 5.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 35.h,
                  vertical: 34.v,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Column(
                  children: [
                    SizedBox(height: 53.v),
                    _buildBasket(context),
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
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBasket(BuildContext context) {
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
