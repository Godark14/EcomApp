import 'models/splash_screen_three_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/splash_screen_three_provider.dart';

class SplashScreenThreeScreen extends StatefulWidget {
  const SplashScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenThreeScreenState createState() => SplashScreenThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashScreenThreeProvider(),
      child: SplashScreenThreeScreen(),
    );
  }
}

class SplashScreenThreeScreenState extends State<SplashScreenThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 768.v,
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 130.h,
            top: 300.v,
            right: 130.h,
          ),
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
                  right: 2.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 60.v,
                width: 32.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 38.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBookmark,
                height: 41.v,
                width: 97.h,
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
