import 'models/splash_screen_two_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/splash_screen_two_provider.dart';

class SplashScreenTwoScreen extends StatefulWidget {
  const SplashScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenTwoScreenState createState() => SplashScreenTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashScreenTwoProvider(),
      child: SplashScreenTwoScreen(),
    );
  }
}

class SplashScreenTwoScreenState extends State<SplashScreenTwoScreen> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              SizedBox(
                height: 205.v,
                width: 184.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup58,
                      height: 164.v,
                      width: 113.h,
                      alignment: Alignment.topCenter,
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
            ],
          ),
        ),
      ),
    );
  }
}
