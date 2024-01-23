import 'models/welcome_scren_model.dart';
import 'package:ecomapp/core/app_export.dart';
import 'package:flutter/material.dart';
import 'provider/welcome_scren_provider.dart';

class WelcomeScrenScreen extends StatefulWidget {
  const WelcomeScrenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScrenScreenState createState() => WelcomeScrenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeScrenProvider(),
      child: WelcomeScrenScreen(),
    );
  }
}

class WelcomeScrenScreenState extends State<WelcomeScrenScreen> {
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
              _buildWelcomeScreenColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeScreenColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 87.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: CustomImageView(
        imagePath: ImageConstant.imgFruitDrops2RemovebgPreview,
        height: 37.v,
        width: 50.h,
      ),
    );
  }
}
