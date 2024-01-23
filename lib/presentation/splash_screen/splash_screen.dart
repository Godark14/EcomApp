import 'models/splash_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenState createState() => SplashScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashProvider(),
      child: SplashScreen(),
    );
  }
}

class SplashScreenState extends State<SplashScreen> {
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
          padding: EdgeInsets.only(
            left: 130.h,
            top: 300.v,
            right: 130.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgBookmark,
                height: 41.v,
                width: 97.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
