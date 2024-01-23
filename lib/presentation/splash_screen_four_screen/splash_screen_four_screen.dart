import 'models/splash_screen_four_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/splash_screen_four_provider.dart';

class SplashScreenFourScreen extends StatefulWidget {
  const SplashScreenFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenFourScreenState createState() => SplashScreenFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashScreenFourProvider(),
      child: SplashScreenFourScreen(),
    );
  }
}

class SplashScreenFourScreenState extends State<SplashScreenFourScreen> {
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
          child: SingleChildScrollView(
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse11,
              height: 768.v,
              width: 375.h,
            ),
          ),
        ),
      ),
    );
  }
}
