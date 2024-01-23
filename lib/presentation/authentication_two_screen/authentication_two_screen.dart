import 'models/authentication_two_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/authentication_two_provider.dart';

class AuthenticationTwoScreen extends StatefulWidget {
  const AuthenticationTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AuthenticationTwoScreenState createState() => AuthenticationTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthenticationTwoProvider(),
      child: AuthenticationTwoScreen(),
    );
  }
}

class AuthenticationTwoScreenState extends State<AuthenticationTwoScreen> {
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
                width: double.maxFinite,
                padding: EdgeInsets.all(31.h),
                decoration: AppDecoration.fillPrimary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 56.v),
                    _buildFruitBasket(context),
                    SizedBox(height: 4.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup62,
                      height: 18.v,
                      width: 301.h,
                      margin: EdgeInsets.only(left: 6.h),
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
  Widget _buildFruitBasket(BuildContext context) {
    return SizedBox(
      height: 284.v,
      width: 301.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFruitDrops2RemovebgPreview,
            height: 37.v,
            width: 50.h,
            alignment: Alignment.topRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgKisspngFruitB,
            height: 281.v,
            width: 301.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
