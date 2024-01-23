import 'models/splash_screen_five_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/splash_screen_five_provider.dart';

class SplashScreenFiveScreen extends StatefulWidget {
  const SplashScreenFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenFiveScreenState createState() => SplashScreenFiveScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashScreenFiveProvider(),
      child: SplashScreenFiveScreen(),
    );
  }
}

class SplashScreenFiveScreenState extends State<SplashScreenFiveScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 95.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 37.v,
                width: 59.h,
                margin: EdgeInsets.only(left: 48.h),
              ),
              SizedBox(height: 3.v),
              SizedBox(
                height: 164.v,
                width: 184.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector2,
                      height: 101.v,
                      width: 58.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 22.v,
                        right: 36.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 60.v,
                      width: 32.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 42.h,
                        top: 38.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBookmark,
                      height: 41.v,
                      width: 97.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 35.h),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 48.v,
                        width: 184.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 40.v,
                                width: 184.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16.h),
                                    bottomRight: Radius.circular(16.h),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: theme.colorScheme.onPrimary,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        -30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_fruit_hub".tr,
                                style: CustomTextStyles.headlineSmallBadScript,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
